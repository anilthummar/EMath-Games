import 'exports.dart';

/// App-specific extension. Common members (theme, textTheme, instance, etc.) come from common package.
extension CustomExtension on BuildContext {
  /// Access localized strings for the current locale.
  AppString get appStrings => AppString.of(this);
}
