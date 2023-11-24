import 'status_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_response.freezed.dart';
part 'ledger_response.g.dart';

@freezed
class LedgerResponse with _$LedgerResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LedgerResponse({
    required List<int> data,
    @JsonKey(unknownEnumValue: StatusWord.unknownError)
        required StatusWord statusWord,
  }) = _LedgerResponse;

  factory LedgerResponse.fromJson(Map<String, dynamic> json) =>
      _$LedgerResponseFromJson(json);
}
