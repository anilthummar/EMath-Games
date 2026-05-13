import 'package:flutter/material.dart';

/// Color palette for the application.
class AppColors {
  AppColors._();

  static final AppColors instance = AppColors._();

  // Design tokens (Figma)
  /// Primary brand blue — `#079FE0`
  static const Color primaryColor = Color(0xFF079FE0);

  /// Secondary brand yellow — `#FFB800`
  static const Color secondaryColor = Color(0xFFFFB800);

  /// Muted brown-grey for secondary text — `#817777`
  static const Color secondaryTextColor = Color(0xFF817777);

  /// Light grey surfaces — `#F5F5F5`
  static const Color lightGrey = Color(0xFFF5F5F5);

  /// Medium grey dividers and borders — `#D0D0D0`
  static const Color mediumGrey = Color(0xFFD0D0D0);

  /// Success / positive accent green — `#4CAF50`
  static const Color green = Color(0xFF4CAF50);

  // Base Colors
  /// Pure white color
  static const Color whiteColor = Colors.white;

  /// Standard black color for text and icons
  static const Color blackColor = Color(0xFF2F2F2F);

  /// Deep blue color for primary elements
  static const Color darkBlueColor = Color(0xFF1F1C57);

  /// Light grey for subtle UI elements
  static const Color lightGreyColor = Color(0xFFD3D3D3);

  /// Medium grey for secondary text
  static const Color normalGreyColor = Color(0xFF878893);

  /// Very light grey for backgrounds
  static const Color extraLightGreyColor = Color(0xFFF5F5F5);

  /// Brand orange color
  static const Color orangeColor = Color(0xFFF56E28);

  /// Bright sky blue used in game onboarding screens.
  static const Color skyBlueColor = Color(0xFF00ACEF);

  /// Bright yellow used for highlighted CTAs.
  static const Color yellowColor = Color(0xFFF8BC00);

  /// Bright pink used in game operation tiles.
  static const Color pinkColor = Color(0xFFF51675);

  /// Bright green used in game operation tiles.
  static const Color greenColor = Color(0xFF59C449);

  /// Standard red for error states
  static const Color normalRedColor = Color(0xFFEA4128);

  /// Lighter red for warnings
  static const Color lightRedColor = Color(0xFFE74646);

  // Theme Colors
  /// Transparent color for overlays
  Color transparent = Colors.transparent;

  /// Light red for error containers
  Color errorContainer = Colors.redAccent.shade100;

  /// Primary brand color
  Color primary = orangeColor;

  /// Color for content on primary color
  Color onPrimary = whiteColor;

  /// Container with primary color
  Color primaryContainer = orangeColor;

  /// Color for content on primary container
  Color onPrimaryContainer = whiteColor;

  /// Secondary brand color
  Color secondary = orangeColor;

  /// Color for content on secondary color
  Color onSecondary = whiteColor;

  /// Color for content on secondary container
  Color onSecondaryContainer = orangeColor;

  /// Background color for secondary containers
  Color secondaryContainer = whiteColor;

  /// Main background color
  Color background = whiteColor;

  /// Color for content on background
  Color onBackground = whiteColor;

  /// Surface color for cards and elevated elements
  Color surface = whiteColor;

  /// Color for content on surface
  Color onSurface = blackColor;

  /// Alert color for error states and warnings
  Color redColor = normalRedColor;

  // Text Colors
  /// Color for text on white backgrounds
  Color whiteTextColor = whiteColor;

  /// Color for primary text
  Color blackTextColor = blackColor;

  /// Color for subtle/disabled text
  Color lightGrayTextColor = lightGreyColor;

  /// Color for secondary text
  Color mediumGrayTextColor = normalGreyColor;

  /// Color for emphasized blue text
  Color blueTextColor = darkBlueColor;

  /// Color for error/warning text
  Color redTextColor = lightRedColor;

  /// Color for highlighted/action text
  Color orangeTextColor = orangeColor;

  // Background Colors
  /// White background for cards and surfaces
  Color whiteBGColor = whiteColor;

  /// Dark blue background for emphasis
  Color blueBGColor = darkBlueColor;

  /// Orange background for CTAs
  Color orangeBGColor = orangeColor;

  /// Medium grey background for inactive states
  Color mediumGrayBGColor = normalGreyColor;

  /// Black background for contrast
  Color blackBGColor = blackColor;

  /// Light grey background for subtle separation
  Color lightGrayBGColor = lightGreyColor;

  /// Very light grey background for subtle containers
  Color extraLightGreyBGColor = extraLightGreyColor;

  /// Light red background for warnings
  Color lightRedBGColor = lightRedColor;
}
