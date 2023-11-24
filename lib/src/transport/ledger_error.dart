import 'status_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_error.freezed.dart';

@freezed
class LedgerError with _$LedgerError {
  const factory LedgerError.connectionError({
    required String origMessage,
  }) = _ConnectionError;

  const factory LedgerError.responseError({
    required StatusWord statusWord,
  }) = _ResponseError;
}
