class Version {
  final int versionMajor;
  final int versionMinor;
  final int versionPatch;

  Version({
    required this.versionMajor,
    required this.versionMinor,
    required this.versionPatch,
  });

  /// Get the version code.
  int get versionCode =>
      versionMajor * 10000 + versionMinor * 100 + versionPatch;

  /// Get the version name.
  String get versionName => '$versionMajor.$versionMinor.$versionPatch';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Version &&
          runtimeType == other.runtimeType &&
          versionMajor == other.versionMajor &&
          versionMinor == other.versionMinor &&
          versionPatch == other.versionPatch;

  @override
  int get hashCode =>
      versionMajor.hashCode ^ versionMinor.hashCode ^ versionPatch.hashCode;

  @override
  String toString() {
    return '$versionMajor.$versionMinor.$versionPatch';
  }
}
