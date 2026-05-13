import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'breakpoints.dart';

/// Extension methods for [BuildContext].
extension CommonContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  T instance<T>() => read<T>();
  void nextFocus() => FocusScope.of(this).nextFocus();
  void hideKeyboard() => FocusManager.instance.primaryFocus?.unfocus();

  bool get isMobileView => width < Breakpoints.mobile;
  bool get isTabletView =>
      width >= Breakpoints.mobile && width < Breakpoints.desktop;
  bool get isWebView => width >= Breakpoints.desktop;
}
