import 'exports.dart';

/// App-specific: employee code validation.
extension AppStringUtils on String? {
  /// Checks if the string starts with 'c'.
  bool get isValidEmployeeCode =>
      this!.toString().toLowerCase().startsWith('c');

  /// Checks if the string is a valid password.
  bool get isValidPassword =>
      RegExpressions.instance.password.hasMatch(this ?? '');
}

/// App-specific: form validation with localized messages.
extension TextFieldValidator on String {
  /// Validates the password field.
  String? validatePassword(BuildContext context) {
    if (isEmpty) {
      return context.appStrings.pleaseEnterPasswordKey;
    }
    if (!RegExpressions.instance.password.hasMatch(this)) {
      return context.appStrings.passwordShouldHaveKey;
    }
    return null;
  }

  /// Validates the email field.
  String? validateEmail(BuildContext context) {
    if (isEmpty) {
      return context.appStrings.pleaseEnterEmailIdKey;
    }
    if (!RegExpressions.instance.email.hasMatch(this)) {
      return context.appStrings.pleaseEnterValidEmailIdKey;
    }
    return null;
  }

  /// Validates the OTP code.
  String? validateOtpCode(BuildContext context) {
    if (isEmpty) {
      return context.appStrings.pleaseEnterOTPKey;
    }
    if (length != AppConstant.otpTextLength) {
      return context.appStrings.pleaseEnterValidOTPKey;
    }
    return null;
  }
}
