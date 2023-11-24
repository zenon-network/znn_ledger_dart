// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LedgerResponseImpl _$$LedgerResponseImplFromJson(Map<String, dynamic> json) =>
    _$LedgerResponseImpl(
      data: (json['data'] as List<dynamic>).map((e) => e as int).toList(),
      statusWord: $enumDecode(_$StatusWordEnumMap, json['status_word'],
          unknownValue: StatusWord.unknownError),
    );

Map<String, dynamic> _$$LedgerResponseImplToJson(
        _$LedgerResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status_word': _$StatusWordEnumMap[instance.statusWord]!,
    };

const _$StatusWordEnumMap = {
  StatusWord.deny: 27013,
  StatusWord.wrongP1P2: 27270,
  StatusWord.wrongDataLength: 27271,
  StatusWord.inactiveDevice: 27404,
  StatusWord.notAllowed: 27750,
  StatusWord.insNotSupported: 27904,
  StatusWord.claNotSupported: 28160,
  StatusWord.appIsNotOpen: 25873,
  StatusWord.wrongResponseLength: 45056,
  StatusWord.displayBip32PathFail: 45057,
  StatusWord.displayAddressFail: 45058,
  StatusWord.displayAmountFail: 45059,
  StatusWord.wrongTxLength: 45060,
  StatusWord.txParsingFail: 45061,
  StatusWord.txHashFail: 45062,
  StatusWord.badState: 45063,
  StatusWord.signatureFail: 45064,
  StatusWord.success: 36864,
  StatusWord.unknownError: 'unknownError',
};
