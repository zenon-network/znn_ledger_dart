import 'package:freezed_annotation/freezed_annotation.dart';

enum StatusWord {
  @JsonValue(0x6985)
  deny,
  @JsonValue(0x6A86)
  wrongP1P2,
  @JsonValue(0x6A87)
  wrongDataLength,
  @JsonValue(0x6b0c)
  inactiveDevice,
  @JsonValue(0x6c66)
  notAllowed,
  @JsonValue(0x6D00)
  insNotSupported,
  @JsonValue(0x6E00)
  claNotSupported,  
  @JsonValue(0x6511)
  appIsNotOpen,
  @JsonValue(0xB000)
  wrongResponseLength,
  @JsonValue(0xB001)
  displayBip32PathFail,
  @JsonValue(0xB002)
  displayAddressFail,
  @JsonValue(0xB003)
  displayAmountFail,
  @JsonValue(0xB004)
  wrongTxLength,
  @JsonValue(0xB005)
  txParsingFail,
  @JsonValue(0xB006)
  txHashFail,
  @JsonValue(0xB007)
  badState,
  @JsonValue(0xB008)
  signatureFail,
  @JsonValue(0x9000)
  success,
  unknownError;

  @override
  String toString() {
    switch (this) {
      case StatusWord.deny:
        return 'deny';
      case StatusWord.wrongP1P2:
        return 'wrongP1P2';
      case StatusWord.wrongDataLength:
        return 'wrongDataLength';
      case StatusWord.inactiveDevice:
        return 'inactiveDevice';
      case StatusWord.notAllowed:
        return 'notAllowed';
      case StatusWord.insNotSupported:
        return 'insNotSupported';
      case StatusWord.claNotSupported:
        return 'claNotSupported';
      case StatusWord.appIsNotOpen:
        return 'appIsNotOpen';
      case StatusWord.wrongResponseLength:
        return 'wrongResponseLength';
      case StatusWord.displayBip32PathFail:
        return 'displayBip32PathFail';
      case StatusWord.displayAddressFail:
        return 'displayAddressFail';
      case StatusWord.displayAmountFail:
        return 'displayAmountFail';
      case StatusWord.wrongTxLength:
        return 'wrongTxLength';
      case StatusWord.txParsingFail:
        return 'txParsingFail';
      case StatusWord.txHashFail:
        return 'txHashFail';
      case StatusWord.badState:
        return 'badState';
      case StatusWord.signatureFail:
        return 'signatureFail';
      case StatusWord.success:
        return 'success';
      case StatusWord.unknownError:
        return 'unknownError';
    }
  }
}
