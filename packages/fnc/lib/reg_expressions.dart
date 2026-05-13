/// Common regex patterns for validation.
class RegExpressions {
  RegExpressions._();

  static final RegExpressions instance = RegExpressions._();

  /// Password: 8+ chars, at least one lowercase, one digit.
  final RegExp password =
      RegExp(r'^(?=.*[a-z])(?=.*\d)[a-zA-Z\d\w\W]{8,}$');

  /// Indian Aadhaar format: XXXX XXXX XXXX.
  final RegExp aadharRegex =
      RegExp(r'^[2-9]{1}[0-9]{3}\s[0-9]{4}\s[0-9]{4}$');

  /// Single digit match.
  final RegExp onlyDigitsRegex = RegExp(r'[0-9]');

  /// Email format.
  final RegExp email = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
}
