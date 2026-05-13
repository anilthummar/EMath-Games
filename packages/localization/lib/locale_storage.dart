/// Interface for persisting the current locale.
abstract class LocaleStorage {
  Future<void> setLocale(String languageCode);
  String getLocale([String defaultValue = 'en']);
}
