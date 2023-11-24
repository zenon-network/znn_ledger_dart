import 'dart:typed_data';

extension UintList on int {
  Uint8List toBytes() {
    var value = this;
    return Uint8List.fromList([
      (value >> 24) & 0xff,
      (value >> 16) & 0xff,
      (value >> 8) & 0xff,
      value & 0xff,
    ]);
  }
}
