import 'package:localization/localization.dart' as loc;

import '../../utils/exports.dart';

final loc.LocaleStorage _localeStorage = loc.SharedPrefLocaleStorage();

/// Sets the locale for the application.
Future<Locale> setLocale(String languageCode) async =>
    loc.setLocale(_localeStorage, languageCode);

/// Retrieves the current locale of the application.
Locale getLocale() => loc.getLocale(_localeStorage);
