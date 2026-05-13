import 'package:storage/storage.dart';

import 'locale_storage.dart';

/// [LocaleStorage] implementation using [SharedPref].
class SharedPrefLocaleStorage implements LocaleStorage {
  SharedPrefLocaleStorage({String? localeKey})
      : localeKey = localeKey ?? SharedPref.currentLocaleKey;

  final String localeKey;

  @override
  Future<void> setLocale(String languageCode) async {
    await SharedPref.instance.setValue(localeKey, languageCode);
  }

  @override
  String getLocale([String defaultValue = 'en']) {
    return SharedPref.instance.getString(localeKey, defaultValue);
  }
}
