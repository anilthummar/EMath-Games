import 'package:flutter/material.dart';

import 'locale_storage.dart';

/// Sets the locale and persists it.
Future<Locale> setLocale(LocaleStorage storage, String languageCode) async {
  await storage.setLocale(languageCode);
  return Locale(languageCode.isNotEmpty ? languageCode : 'en', '');
}

/// Retrieves the current locale from storage.
Locale getLocale(LocaleStorage storage, [String defaultCode = 'en']) {
  final code = storage.getLocale(defaultCode);
  return Locale(code.isNotEmpty ? code : defaultCode, '');
}
