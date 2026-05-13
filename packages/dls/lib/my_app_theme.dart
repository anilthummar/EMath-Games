import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_styles.dart';
import 'dimens.dart';
import 'extensions.dart';

/// Application theme configuration.
class MyAppTheme {
  MyAppTheme._();

  static final MyAppTheme instance = MyAppTheme._();

  /// The application's color scheme.
  final ColorScheme appColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.instance.primary,
    primaryContainer: AppColors.instance.primaryContainer,
    onPrimaryContainer: AppColors.instance.onPrimaryContainer,
    onPrimary: AppColors.instance.onPrimary,
    secondary: AppColors.instance.secondary,
    onSecondary: AppColors.instance.onSecondary,
    onSecondaryContainer: AppColors.instance.onSecondaryContainer,
    secondaryContainer: AppColors.instance.secondaryContainer,
    tertiary: AppColors.instance.lightGrayBGColor,
    error: AppColors.instance.redColor,
    onError: AppColors.instance.redColor,
    errorContainer: AppColors.instance.errorContainer,
    onErrorContainer: AppColors.instance.redColor,
    surface: AppColors.instance.surface,
    onSurface: AppColors.instance.onSurface,
    outline: AppColors.instance.lightGrayBGColor,
    shadow: AppColors.instance.blackBGColor,
  );

  /// Returns the main theme configuration for the application.
  ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: getAppBarTheme(),
      primaryTextTheme: AppStyles.instance.textTheme,
      colorScheme: appColorScheme,
      splashColor: appColorScheme.onPrimary.withValues(alpha: Dimens.opacity014),
      iconTheme: IconThemeData(color: appColorScheme.onSurface),
      scaffoldBackgroundColor: appColorScheme.surface,
      buttonTheme: getButtonTheme(),
      textButtonTheme: getTextButtonThemeData(),
      elevatedButtonTheme: getElevatedButtonThemeData(),
      outlinedButtonTheme: getOutlinedButtonThemeData(),
      floatingActionButtonTheme: getFloatingActionButtonThemeData(),
      textTheme: AppStyles.instance.textTheme,
      inputDecorationTheme: getInputDecorationTheme(),
      cardTheme: getCardTheme(),
      dialogTheme: getDialogTheme(),
      bottomSheetTheme: getBottomSheetThemeData(),
      bottomNavigationBarTheme: getBottomNavigationBarThemeData(),
      dividerColor: appColorScheme.outline,
      drawerTheme: getDrawerThemeData(),
      tabBarTheme: getTabBarTheme(),
      switchTheme: getSwitchThemeData(),
      snackBarTheme: getSnackBarThemeData(),
      radioTheme: getRadioThemeData(),
      progressIndicatorTheme: getProgressIndicatorThemeData(),
      popupMenuTheme: getPopupMenuThemeData(),
      useMaterial3: true,
    );
  }

  /// Returns the theme configuration for app bars.
  AppBarTheme getAppBarTheme() {
    return AppBarTheme(
      backgroundColor: appColorScheme.primary,
      centerTitle: true,
      actionsIconTheme:
          IconThemeData(color: appColorScheme.onPrimary, size: Dimens.size25),
      shadowColor: AppColors.instance.lightGrayBGColor,
      shape: Border(
        bottom: BorderSide(
          color: AppColors.instance.lightGrayBGColor,
        ),
      ),
      iconTheme: IconThemeData(color: appColorScheme.onPrimary),
      titleTextStyle: AppStyles.instance.textTheme.titleLarge?.copyWith(
          fontSize: Dimens.fontSize20, color: appColorScheme.primary),
      systemOverlayStyle: systemOverlay(),
    );
  }

  /// Returns the system overlay style configuration.
  SystemUiOverlayStyle systemOverlay() {
    return SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: appColorScheme.primary,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: appColorScheme.primary,
      systemNavigationBarDividerColor: appColorScheme.surface,
      systemNavigationBarIconBrightness: Brightness.light,
    );
  }

  /// Returns the theme configuration for buttons.
  ButtonThemeData getButtonTheme() {
    return ButtonThemeData(
        buttonColor: appColorScheme.primary,
        disabledColor: appColorScheme.outline,
        padding: const EdgeInsets.symmetric(
            vertical: Dimens.padding10, horizontal: Dimens.padding20),
        colorScheme: appColorScheme,
        textTheme: ButtonTextTheme.primary,
        splashColor: appColorScheme.onPrimary.withValues(alpha: Dimens.opacity014),
        shape: RoundedRectangleBorder(
          borderRadius: Dimens.radius10.borderRadius,
          side: Dimens.borderWidth3.borderSide(
            color: appColorScheme.primary,
            style: BorderStyle.solid,
          ),
        ));
  }

  /// Returns the theme configuration for text buttons.
  TextButtonThemeData getTextButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return appColorScheme.primary.withValues(alpha: Dimens.opacity014);
            }
            return null;
          },
        ),
        foregroundColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return appColorScheme.tertiary;
          }
          return appColorScheme.surface;
        }),
        textStyle: WidgetStatePropertyAll<TextStyle?>(
          AppStyles.instance.textTheme.titleLarge?.copyWith(
              fontSize: Dimens.fontSize20, color: appColorScheme.surface),
        ),
        shape: WidgetStatePropertyAll<OutlinedBorder?>(
          RoundedRectangleBorder(
            borderRadius: Dimens.radius6.borderRadius,
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return appColorScheme.outline;
            }
            return null;
          },
        ),
      ),
    );
  }

  /// Returns the theme configuration for elevated buttons.
  ElevatedButtonThemeData getElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return appColorScheme.onPrimary.withValues(alpha: Dimens.opacity014);
            }
            return null;
          },
        ),
        shadowColor: WidgetStatePropertyAll<Color?>(
          appColorScheme.shadow,
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return appColorScheme.tertiary;
            }
            return null;
          },
        ),
        foregroundColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return appColorScheme.tertiary;
          }
          return appColorScheme.surface;
        }),
        textStyle: WidgetStatePropertyAll<TextStyle?>(
          AppStyles.instance.textTheme.titleLarge?.copyWith(
              fontSize: Dimens.fontSize20, color: appColorScheme.surface),
        ),
        padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.only(
              left: Dimens.padding36,
              right: Dimens.padding36,
              top: Dimens.padding18,
              bottom: Dimens.padding18),
        ),
        side: WidgetStatePropertyAll<BorderSide?>(
          Dimens.borderWidth05.borderSide(
            color: AppColors.instance.lightGrayBGColor,
            style: BorderStyle.solid,
            strokeAlign: Dimens.borderWidth1,
          ),
        ),
        shape: WidgetStatePropertyAll<OutlinedBorder?>(
          RoundedRectangleBorder(
            borderRadius: Dimens.radius6.borderRadius,
          ),
        ),
      ),
    );
  }

  /// Returns the theme configuration for outlined buttons.
  OutlinedButtonThemeData getOutlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return appColorScheme.primary.withValues(alpha: Dimens.opacity014);
            }
            return null;
          },
        ),
        backgroundColor: WidgetStatePropertyAll<Color?>(
          appColorScheme.surface,
        ),
        foregroundColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return appColorScheme.tertiary;
          }
          return appColorScheme.surface;
        }),
        textStyle: WidgetStatePropertyAll<TextStyle?>(
          AppStyles.instance.textTheme.titleLarge?.copyWith(
              fontSize: Dimens.fontSize20, color: appColorScheme.surface),
        ),
        padding: const WidgetStatePropertyAll<EdgeInsetsGeometry?>(
            EdgeInsets.symmetric(
                horizontal: Dimens.padding30, vertical: Dimens.padding10)),
        side: WidgetStatePropertyAll<BorderSide?>(
          Dimens.borderWidth1.borderSide(
            color: appColorScheme.surface,
            style: BorderStyle.solid,
            strokeAlign: Dimens.borderWidth1,
          ),
        ),
        shape: WidgetStatePropertyAll<OutlinedBorder?>(
          RoundedRectangleBorder(
            borderRadius: Dimens.radius27.borderRadius,
          ),
        ),
      ),
    );
  }

  /// Returns the theme configuration for floating action buttons.
  FloatingActionButtonThemeData getFloatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      elevation: Dimens.space4,
      backgroundColor: appColorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: Dimens.radius20.borderRadius),
      disabledElevation: Dimens.zero,
      extendedIconLabelSpacing: Dimens.space20,
      splashColor: appColorScheme.primary.withValues(alpha: Dimens.opacity014),
    );
  }

  /// Returns the theme configuration for input decorations.
  InputDecorationTheme getInputDecorationTheme() {
    return InputDecorationTheme(
      isCollapsed: true,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: Dimens.padding10),
      hintStyle: AppStyles.instance.textTheme.labelSmall
          ?.copyWith(color: AppColors.instance.lightGrayTextColor),
      labelStyle: AppStyles.instance.textTheme.bodyMedium,
      hoverColor: Colors.transparent,
      errorStyle:
          AppStyles.instance.errorStyle.copyWith(fontSize: Dimens.fontSize12),
      alignLabelWithHint: true,
      errorMaxLines: Dimens.maxLines03,
      border: Dimens.radius4.outlineInputBorder(
        borderSide:
            Dimens.borderWidth1.borderSide(color: appColorScheme.outline),
      ),
      focusedBorder: Dimens.radius4.outlineInputBorder(
        borderSide:
            Dimens.borderWidth1.borderSide(color: appColorScheme.tertiary),
      ),
      errorBorder: Dimens.radius4.outlineInputBorder(
        borderSide: Dimens.borderWidth1.borderSide(color: appColorScheme.error),
      ),
      focusedErrorBorder: Dimens.radius4.outlineInputBorder(
        borderSide: Dimens.borderWidth1.borderSide(color: appColorScheme.error),
      ),
      disabledBorder: Dimens.radius4.outlineInputBorder(
        borderSide: Dimens.borderWidth1
            .borderSide(color: appColorScheme.outline.withValues(alpha: 0.5)),
      ),
    );
  }

  /// Returns the theme configuration for cards.
  CardThemeData getCardTheme() {
    return CardThemeData(
      color: AppColors.instance.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: Dimens.radius10.borderRadius,
      ),
      shadowColor: AppColors.instance.transparent,
      elevation: Dimens.space4,
    );
  }

  /// Returns the theme configuration for dialogs.
  DialogThemeData getDialogTheme() {
    return DialogThemeData(
      backgroundColor: appColorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: Dimens.radius20.borderRadius,
      ),
      elevation: Dimens.space4,
      titleTextStyle: AppStyles.instance.textTheme.titleLarge
          ?.copyWith(color: appColorScheme.onSurface),
      contentTextStyle: AppStyles.instance.textTheme.bodyMedium?.copyWith(
        color: appColorScheme.onSurface,
      ),
    );
  }

  /// Returns the theme configuration for bottom sheets.
  BottomSheetThemeData getBottomSheetThemeData() {
    return BottomSheetThemeData(
      backgroundColor: appColorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Dimens.radius24.circularRadius,
          topRight: Dimens.radius24.circularRadius,
        ),
      ),
      modalBackgroundColor: appColorScheme.surface,
      elevation: Dimens.space4,
      modalElevation: Dimens.space4,
    );
  }

  /// Returns the theme configuration for bottom navigation bars.
  BottomNavigationBarThemeData getBottomNavigationBarThemeData() {
    return BottomNavigationBarThemeData(
      elevation: Dimens.space4,
      backgroundColor: appColorScheme.surface,
      selectedIconTheme:
          IconThemeData(color: appColorScheme.surface, size: Dimens.size28),
      selectedItemColor: appColorScheme.surface,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedIconTheme: IconThemeData(color: appColorScheme.tertiary),
      unselectedItemColor: appColorScheme.tertiary,
      selectedLabelStyle: AppStyles.instance.textTheme.bodyMedium
          ?.copyWith(fontSize: Dimens.fontSize12),
      unselectedLabelStyle: AppStyles.instance.textTheme.bodyMedium
          ?.copyWith(fontSize: Dimens.fontSize12),
    );
  }

  /// Returns the theme configuration for drawers.
  DrawerThemeData getDrawerThemeData() {
    return DrawerThemeData(
      backgroundColor: appColorScheme.surface,
    );
  }

  /// Returns the theme configuration for tab bars.
  TabBarThemeData getTabBarTheme() {
    return TabBarThemeData(
      overlayColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return appColorScheme.surface.withValues(alpha: Dimens.opacity014);
          }
          return null;
        },
      ),
    );
  }

  /// Returns the theme configuration for switches.
  SwitchThemeData getSwitchThemeData() {
    return SwitchThemeData(
      thumbColor: WidgetStatePropertyAll<Color?>(appColorScheme.surface),
      trackColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected) ||
              states.contains(WidgetState.pressed)) {
            return appColorScheme.surface;
          }
          return appColorScheme.tertiary;
        },
      ),
      overlayColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return appColorScheme.surface.withValues(alpha: Dimens.opacity014);
          }
          return null;
        },
      ),
      splashRadius: Dimens.radius10,
    );
  }

  /// Returns the theme configuration for snack bars.
  SnackBarThemeData getSnackBarThemeData() {
    return SnackBarThemeData(
      shape: RoundedRectangleBorder(borderRadius: Dimens.radius6.borderRadius),
      backgroundColor: appColorScheme.onSurface,
      actionTextColor: appColorScheme.surface,
      contentTextStyle: AppStyles.instance.textTheme.bodyMedium
          ?.copyWith(color: appColorScheme.surface),
    );
  }

  /// Returns the theme configuration for radio buttons.
  RadioThemeData getRadioThemeData() {
    return RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        return appColorScheme.primary;
      }),
      splashRadius: Dimens.radius10,
    );
  }

  /// Returns the theme configuration for progress indicators.
  ProgressIndicatorThemeData getProgressIndicatorThemeData() {
    return ProgressIndicatorThemeData(
      circularTrackColor: Colors.transparent,
      color: appColorScheme.tertiary,
      linearMinHeight: Dimens.space2,
      linearTrackColor: Colors.transparent,
    );
  }

  /// Returns the theme configuration for popup menus.
  PopupMenuThemeData getPopupMenuThemeData() {
    return PopupMenuThemeData(
        color: appColorScheme.surface,
        elevation: Dimens.space4,
        shape:
            RoundedRectangleBorder(borderRadius: Dimens.radius10.borderRadius),
        textStyle: AppStyles.instance.textTheme.bodySmall);
  }
}
