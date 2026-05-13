import 'dart:convert';
import 'dart:typed_data';

/// Generic string utilities.
extension StringUtilsExt on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
  bool get isBlank => this == null || this!.trim().isEmpty;
  bool get isNotBlank => !isBlank;
  bool get isNullOrBlank => this == null || isBlank;
  bool get isNotNullOrBlank => !isNullOrBlank;

  String get toTitleCase =>
      this == null ? '' : '${this![0].toUpperCase()}${this!.substring(1)}';

  String get toBase64 => base64Encode(utf8.encode(this ?? ''));
  Uint8List get fromBase64 => base64Decode(this ?? '');
}

/// List<String> utilities.
extension ListStringExt on List<String> {
  String get joinToString =>
      reduce((String curr, String next) => '$curr,$next');
  String get joinWithoutSeparator =>
      reduce((String curr, String next) => '$curr$next');
}
