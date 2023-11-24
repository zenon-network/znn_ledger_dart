import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_device.freezed.dart';
part 'ledger_device.g.dart';

@freezed
class LedgerDevice with _$LedgerDevice {
  @JsonSerializable()
  const factory LedgerDevice({
    required String name,
    required String path,
  }) = _LedgerDevice;

  factory LedgerDevice.fromJson(Map<String, dynamic> json) =>
      _$LedgerDeviceFromJson(json);
}
