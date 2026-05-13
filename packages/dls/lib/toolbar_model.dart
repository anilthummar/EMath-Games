import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Model for configuring the toolbar options.
class ToolBarModel {
  /// The flag to check if the toolbar is visible.
  bool isToolBarVisible, isLogoVisible, isMenuVisible, isSafeAreaVisible;

  /// The color of the app bar.
  Color? appBarColor;

  /// The callback for menu click events.
  Function()? onMenuClick;

  /// The callback for logout click events.
  Function()? onLogoutClick;

  /// Creates a [ToolBarModel] instance with the given parameters.
  ToolBarModel({
    this.isToolBarVisible = false,
    this.isSafeAreaVisible = true,
    this.isMenuVisible = false,
    Color? appBarColor,
    this.isLogoVisible = false,
    this.onLogoutClick,
  }) : appBarColor = appBarColor ?? AppColors.instance.blueBGColor;
}
