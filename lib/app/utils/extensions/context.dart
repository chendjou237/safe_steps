import 'package:flutter/material.dart';

extension WakaluxeBuildContextExtension on BuildContext {
  /// Extension methods for [BuildContext] to access the [ThemeData] of the
  /// current [Theme], including [Brightness].
  /// ```dart
  /// context.theme
  /// context.typography
  /// context.scheme
  /// context.brightness
  /// context.isLight
  /// context.isDark
  /// ```

  ThemeData get theme => Theme.of(this);

  /// Get the [TextTheme] of the current [Theme].
  ///
  /// ```dart
  /// context.typography
  /// ```
  TextTheme get typography => theme.textTheme;
  TextStyle get titleLg => typography.titleLarge!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get titleLgBold => typography.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
        color: scheme.onBackground,
        fontSize: 18,
      );
  TextStyle get titleMd => typography.titleMedium!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get titleMdBold => typography.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: scheme.onBackground,
      );
  TextStyle get titleSm => typography.titleSmall!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );

  TextStyle get displayLg => typography.displayLarge!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get displayMd => typography.displayMedium!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get displaySm => typography.displaySmall!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get bodySm => typography.bodySmall!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get bodyMd => typography.bodyMedium!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );

  TextStyle get bodyMdBold => bodyMd.copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get bodyLg => typography.bodyLarge!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground,
      );
  TextStyle get bodyLgGray => typography.bodyLarge!.copyWith(
        //fontWeight: FontWeight.w600,
        color: scheme.onBackground.withOpacity(0.6),
      );
  TextStyle get bodyLgBold => bodyLg.copyWith(
        fontWeight: FontWeight.w600,
      );

  /// Get the [ColorScheme] of the current [Theme].
  ColorScheme get scheme => theme.colorScheme;

  /// Get the [Brightness] of the current [Theme].
  Brightness get brightness => theme.brightness;

  /// Get the [Brightness] of the current [Theme].
  bool get isLight => brightness == Brightness.light;
  bool get isDark => brightness == Brightness.dark;

  /// Get [MediaQueryData] of the current [BuildContext].
  /// ```dart
  /// context.mediaQuery
  /// context.size
  /// context.width
  /// context.height
  /// context.orientation
  /// context.isPortrait
  /// context.isLandscape
  /// ```

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;
  Orientation get orientation => mediaQuery.orientation;
  bool get isPortrait => orientation == Orientation.portrait;
  bool get isLandscape => orientation == Orientation.landscape;
  void showSnackBar(
    String message, {
    Duration? duration,
    Color? color,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message, style: bodyMd),
        behavior: SnackBarBehavior.floating,
        duration: duration ?? const Duration(seconds: 1),
        backgroundColor: color ?? scheme.primary,
      ),
    );
  }

  void showSnackBarWithAction(
    String message, {
    required String actionLabel,
    required VoidCallback onAction,
    Duration? duration,
    Color? color,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message, style: bodyMd),
        behavior: SnackBarBehavior.floating,
        duration: duration ?? const Duration(seconds: 1),
        backgroundColor: color ?? scheme.primary,
        action: SnackBarAction(
          label: actionLabel,
          onPressed: onAction,
        ),
      ),
    );
  }
}
