// Tested with Digispark as "Digispark (16 Mhz - No USB)"

#include <SoftSerial.h>
#include <TinyPinChange.h>
#include <EEPROM.h> // Library may need to be copied:
                    // https://digistump.com/board/index.php?topic=1132.0
#include "Port.h"
#include "timeslot.h"
#include "OtherNode.h"
#include "Pair.h"
#include "newPairs.h"

const uint8_t ledPin = 1;
const uint8_t portPins[] = {0, 4};
uint8_t nodeId;
const uint8_t portsCount = 2;
const unsigned long graceTime = 100; // time for other node to switch to receive

Port *ports[portsCount];

uint8_t digitFromChar(char c) {
  return c - 48;
}

char charFromDigit(uint8_t digit) {
  return digit + 48;
}

void flashLed() {
  digitalWrite(ledPin, HIGH);
  delay(50);
  digitalWrite(ledPin, LOW);
  delay(50);
}

boolean isRoot() {
  return nodeId == 'a';
}

boolean startsRequest(char c) {
  return c == '?';
}

boolean readRequest(Port *port) {
  const uint8_t payloadSize = 3;
  char payload[payloadSize];
  boolean payloadIsComplete = port->readPayload(payload, payloadSize);

  if (!payloadIsComplete) {
    return false;
  }

  port->neighbor.nodeId = payload[0];
  port->neighbor.portNumber = digitFromChar(payload[1]);
  port->connectsToParent = true;

  return true;
}

void syncTimeSlotToParent() {
  openTimeSlotStartingAt(millis() - graceTime);
}

// fixme, later:
//
// * Maybe cap time for one entire period of time slots (one second e.g.).
//
// * Cycle through ports.
void waitForRequestAndSyncTimeSlot(Port *port) {
  uint8_t i = 0;
  port->serial->listen();
  port->serial->rxMode();
  while (true) {
    if (port->serial->available()) {
      char c = port->serial->read();
      if (startsRequest(c)) {
        syncTimeSlotToParent();
        if (readRequest(port)) {
          return;
        }
      }
    }
  }
}

void sendReply(Port *port) {
  OtherNode &parent = port->neighbor;

  port->serial->txMode();
  char buffer[] = {'!',
                   parent.nodeId,
                   charFromDigit(parent.portNumber),
                   nodeId,
                   charFromDigit(port->number),
                   '\n', // line break for easy debugging
                   '\0'};
  port->serial->write(buffer);
}

void setup() {
  for (uint8_t i = 0; i < portsCount; i ++) {
    ports[i] = new Port(portPins[i], i);
  }

  for (uint8_t i = 0; i < portsCount; i ++) {
    ports[i]->next = ports[(portsCount + i - 1) % portsCount];
  }

  nodeId = EEPROM.read(0);
  for (uint8_t i = 0; i < portsCount; i ++) {
    ports[i]->serial->begin(4800);
  }
  pinMode(ledPin, OUTPUT);
  flashLed();
}

void sendRequest(Port *port) {
  port->serial->listen();
  port->serial->txMode();
  char buffer[] = {'?',
                   nodeId,
                   charFromDigit(port->number),
                   '\n', // line break for easy debugging
                   '\0'};
  port->serial->write(buffer);
  port->serial->rxMode();
}

void waitForParent(Port *port) {
  waitForRequestAndSyncTimeSlot(port);
  flashLed();
  flashLed();
  waitForEndOfTimeSlot();

  openNextTimeSlot();
  giveOtherSideTimeToGetReady();
  sendReply(port);
  waitForEndOfTimeSlot();
}

boolean startsReply(char c) {
  return c == '!';
}

boolean firstNodeIsI(Pair pair) {
  return pair.firstNode.nodeId == nodeId;
}

boolean secondNodeIsMyNeighbor(Port *port, Pair pair) {
  return pair.secondNode == port->neighbor;
}

boolean pairIsNotNew(Port *port, Pair pair) {
  if (firstNodeIsI(pair) && secondNodeIsMyNeighbor(port, pair)) {
    return true;
  }

  return false;
}

void storeAsChild(Port *port, OtherNode &neighbor) {
  port->neighbor = neighbor;
  port->connectsToParent = false;
}

void readReply(Port *port) {
  const uint8_t payloadSize = 5;
  char payload[payloadSize];
  boolean payloadIsComplete = port->readPayload(payload, payloadSize);

  if (!payloadIsComplete) {
    return;
  }

  Pair pair;
  pair.firstNode.nodeId = payload[0];
  pair.firstNode.portNumber = payload[1];
  pair.secondNode.nodeId = payload[2];
  pair.secondNode.portNumber = payload[3];

  if (pairIsNotNew(port, pair)) {
    return;
  }

  if (firstNodeIsI(pair)) {
    storeAsChild(port, pair.secondNode);
  }

  enqueueNewPair(pair);
}

void waitForReply(Port *port) {
  while (!timeSlotHasEnded()) {
    if (port->serial->available()) {
      char c = port->serial->read();
      if (startsReply(c)) {
        readReply(port);
        return;
      }
    }
  }
}

void askForChild(Port *port) {
  openNextTimeSlot();
  giveOtherSideTimeToGetReady();
  sendRequest(port);
  flashLed();
  waitForEndOfTimeSlot();

  openNextTimeSlot();
  waitForReply(port);
  waitForEndOfTimeSlot();
}

void loop() {
  static Port *port = ports[0];

  if (!isRoot()) {
    waitForParent(port); // fixme: wait for one time slot more than an entire
                         // period, then try another pin
    port = port->next;
  } else {
    // Idea for root node: Forward data packages to external controller, without
    // waiting (but back-communication eventually is also needed - make root
    // send packages too, give it ID '*'). Maybe root communicate with network
    // on pin 0, and on two other pins it communicates full duplex with
    // something outside such as a Raspi or a Teensy.
  }

  for (uint8_t i = 0 ; i < portsCount - 1; i ++) {
    askForChild(port);
    port = port->next;
  }
}
