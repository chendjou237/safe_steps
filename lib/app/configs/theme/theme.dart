import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';


import '../../utils/palette.dart';

@immutable
class SafeTheme extends ThemeExtension<SafeTheme> {
  const SafeTheme({
    this.primaryColor = Palette.primary,
    this.tertiaryColor = Palette.tertiary,
    this.neutralColor =  Palette.secondary,
  });

  final Color primaryColor;
  final Color tertiaryColor;
  final Color neutralColor;

  Scheme _scheme() {
    final base = CorePalette.of(primaryColor.value);
    final primary = base.primary;
    final tertiary = CorePalette.of(tertiaryColor.value).tertiary;
    final neutral = CorePalette.of(neutralColor.value).neutral;
    return Scheme(
      primary: primary.get(40),
      onPrimary: primary.get(100),
      primaryContainer: primary.get(90),
      onPrimaryContainer: primary.get(10),
      secondary: base.secondary.get(40),
      onSecondary: base.secondary.get(100),
      secondaryContainer: base.secondary.get(90),
      onSecondaryContainer: base.secondary.get(10),
      tertiary: tertiary.get(40),
      onTertiary: tertiary.get(100),
      tertiaryContainer: tertiary.get(90),
      onTertiaryContainer: tertiary.get(10),
      error: base.error.get(40),
      onError: base.error.get(100),
      errorContainer: base.error.get(90),
      onErrorContainer: base.error.get(10),
      background: neutral.get(99),
      onBackground: neutral.get(10),
      surface: neutral.get(99),
      onSurface: neutral.get(10),
      outline: base.neutralVariant.get(50),
      outlineVariant: base.neutralVariant.get(80),
      surfaceVariant: base.neutralVariant.get(90),
      onSurfaceVariant: base.neutralVariant.get(30),
      shadow: neutral.get(0),
      scrim: neutral.get(0),
      inverseSurface: neutral.get(20),
      inverseOnSurface: neutral.get(95),
      inversePrimary: primary.get(80),
    );
  }

  ThemeData _base(ColorScheme colorScheme) {
    final primaryTextTheme = GoogleFonts.poppinsTextTheme();
    final secondaryTextTheme = GoogleFonts.montserratTextTheme();
    final textTheme = primaryTextTheme.copyWith(
      displaySmall: secondaryTextTheme.displaySmall,
      displayMedium: secondaryTextTheme.displayMedium,
      displayLarge: secondaryTextTheme.displayLarge,
      headlineSmall: secondaryTextTheme.headlineSmall,
      headlineMedium: secondaryTextTheme.headlineMedium,
      headlineLarge: secondaryTextTheme.headlineLarge,
    );
    final isLight = colorScheme.brightness == Brightness.light;
    return ThemeData(
      useMaterial3: true,
      extensions: [this],
      colorScheme: colorScheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: isLight ? colorScheme.secondary : colorScheme.background,
      textTheme: textTheme,
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.onSurface,
        unselectedLabelColor: colorScheme.onSurface,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: colorScheme.primary, width: 2),
          ),
        ),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary, size: 28),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondaryContainer,
        foregroundColor: colorScheme.onSecondaryContainer,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: isLight ? neutralColor : colorScheme.surface,
        selectedIconTheme:
            IconThemeData(color: colorScheme.onSecondaryContainer),
        indicatorColor: colorScheme.secondaryContainer,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? colorScheme.onPrimary : colorScheme.surface,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: isLight ? neutralColor : colorScheme.surface,
      ),
    );
  }

  ThemeData toThemeData(Brightness brightness) {
    final colorScheme = _scheme().toColorScheme(brightness);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }

  @override
  ThemeExtension<SafeTheme> copyWith({
    Color? primaryColor,
    Color? tertiaryColor,
    Color? neutralColor,
  }) =>
      SafeTheme(
        primaryColor: primaryColor ?? this.primaryColor,
        tertiaryColor: tertiaryColor ?? this.tertiaryColor,
        neutralColor: neutralColor ?? this.neutralColor,
      );

  @override
  SafeTheme lerp(
    covariant ThemeExtension<SafeTheme>? other,
    double t,
  ) {
    if (other is! SafeTheme) return this;
    return SafeTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t)!,
      neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!,
    );
  }
}

extension on Scheme {
  ColorScheme toColorScheme(Brightness brightness) {
    if (brightness == Brightness.dark) return darkColorScheme;
    return lightColorScheme;
  }
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFFBE521),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFD9E2FF),
  onPrimaryContainer: Color(0xFF001945),
  secondary: Color(0xFFB02F00),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDBD1),
  onSecondaryContainer: Color(0xFF3B0900),
  tertiary: Color(0xffFBE521),
  onTertiary: Color(0xFF001F25),
  tertiaryContainer: Color(0xFF7EF8D5),
  onTertiaryContainer: Color(0xFF002018),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFE1E2EC),
  onSurfaceVariant: Color(0xFF44464F),
  outline: Color(0xFF757780),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFFB0C6FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF2B5BB5),
  outlineVariant: Color(0xFFC5C6D0),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFB0C6FF),
  onPrimary: Color(0xFF002D6F),
  primaryContainer: Color(0xFF00429C),
  onPrimaryContainer: Color(0xFFD9E2FF),
  secondary: Color(0xFFFFB5A0),
  onSecondary: Color(0xFF5F1500),
  secondaryContainer: Color(0xFF862200),
  onSecondaryContainer: Color(0xFFFFDBD1),
  tertiary: Color(0xFF5FDBBA),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF005140),
  onTertiaryContainer: Color(0xFF7EF8D5),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF44464F),
  onSurfaceVariant: Color(0xFFC5C6D0),
  outline: Color(0xFF8F9099),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFF2B5BB5),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB0C6FF),
  outlineVariant: Color(0xFF44464F),
  scrim: Color(0xFF000000),
);

extension FigmaStyles on TextTheme {
  TextStyle get display2 => GoogleFonts.poppins(
        fontSize: 34.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
        height: 1.5,
        color: Palette.primaryText,
      );
  TextStyle get body1 => GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: Palette.secondaryText,
      );
  TextStyle get body2 => GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryDark.withOpacity(0.87),
      );
  TextStyle get label => GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: Palette.primaryDark,
      );
  TextStyle get display3 => GoogleFonts.poppins(
        fontSize: 34.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryDark,
      );

  TextStyle get headline => GoogleFonts.poppins(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryDark,
      );

  TextStyle get title => GoogleFonts.poppins(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryDark,
      );
      TextStyle get subtitle => GoogleFonts.poppins(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryText,
      );
  TextStyle get subtitle3 => GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryText
      );
       TextStyle get button1 => GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Palette.primaryText
      );
      TextStyle get subHeading1 => GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Palette.primaryText
      );
}
