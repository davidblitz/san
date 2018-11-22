#ifndef TransceiverOnPort_h
#define TransceiverOnPort_h

#include <MultiTrans.h>
#include "Arduino.h"
#include "Port.h"
#include "message.h"

static const uint8_t maxNumberOfCharsPerTransmission = 5;
static const char recordDebugData = false;
static const uint8_t customReceiveBufferSize = 0xff;
using MT = MultiTrans<bitDurationExp,
                      maxNumberOfCharsPerTransmission,
                      recordDebugData,
                      customReceiveBufferSize>;
MT multiTransceiver;

template <uint8_t t, uint8_t u>
class TransceiverOnPort {
  static const uint8_t pinNumber = t;
  
public:
  MT::Transceiver<pinNumber> transceiver;
  static const uint8_t portNumber = u;

  char *getMessage();
};

template <uint8_t t, uint8_t u>
char *TransceiverOnPort<t, u>::getMessage() {
  static uint8_t messageSize = 0;
  static uint8_t messagePos = 0;
  static char message[maxNumberOfCharsPerTransmission + 1];
  static bool gettingMessage = false;
  static MessageType messageType;

  while (true) {
    char character = transceiver.getNextCharacter();

    if (character == 0) {
      return 0;
    }

    if (characterStartsMessage(character)) {
      if (characterStartsAnnouncement(character)) {
        messageType = MessageType::announcement;
        messageSize = announcementMessageSize;
      } else {
        messageType = MessageType::pair;
        messageSize = pairMessageSize;
      }
      messagePos = 0;
      gettingMessage = true;
    }

    if (gettingMessage) {
      if (messagePos < messageSize) {
        message[messagePos] = character;
        messagePos ++;
      }
      if (messagePos == messageSize) {
        gettingMessage = false;
        message[messagePos] = '\0'; // To make it easy to print the message
        switch (messageType) {
        case MessageType::announcement:
          if (checksumIsCorrect<announcementMessageSize>(message)) {
            return message;
          }
        case MessageType::pair:
          if (checksumIsCorrect<pairMessageSize>(message)) {
            return message;
          }
        }
      }
    }
  }
}

#endif
