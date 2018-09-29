#ifndef PortPin_h
#define PortPin_h

#include <MultiTrans.h>
#include "Arduino.h"
#include "Port.h"

// TODO: PortPin -> CommunicationPin?

#if 0 // TODO: decide on one
static const uint8_t maxNumberOfCharsPerTransmission = 5;
#else
// A large value is used for the maximum number of characters per
// transmission than what is needed for sending. The reason is that
// this also creates a larger receive buffer, to combat message loss.
static const uint8_t maxNumberOfCharsPerTransmission = 10;
#endif
using MT = MultiTrans<bitDurationExp, maxNumberOfCharsPerTransmission>;
MT multiTransceiver;

template <uint8_t t, uint8_t u>
class PortPin {
  static const uint8_t pinNumber = t;
  
public:
  MT::Transceiver<pinNumber> transceiver;
  static const uint8_t portNumber = u;

  char *getMessage();
};

template <uint8_t t, uint8_t u>
char *PortPin<t, u>::getMessage() {
  static uint8_t messageSize = 0;
  static uint8_t messagePos = 0;
  static char message[maxNumberOfCharsPerTransmission + 1];
  static bool gettingMessage = false;

  while (true) {
    char character = transceiver.getNextCharacter();

    if (character == 0) {
      return 0;
    }

    switch (character) {
    case '!':
      messageSize = 2;
      messagePos = 0;
      gettingMessage = true;
      break;
    case '%':
      messageSize = 3;
      messagePos = 0;
      gettingMessage = true;
      break;
    }

    if (gettingMessage) {
      if (messagePos < messageSize) {
        message[messagePos] = character;
        messagePos ++;
      }
      if (messagePos == messageSize) {
        message[messagePos] = '\0'; // To make it easy to print the message
        gettingMessage = false;
        return message;
      }
    }
  }
}

#endif
