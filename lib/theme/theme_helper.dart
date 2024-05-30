import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray400,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.gray400,
          fontSize: 13.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 36.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 30.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 26.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 25.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 12.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 10.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 20.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 16.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray400,
          fontSize: 15.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF18ACFE),
    primaryContainer: Color(0XFFBB0000),
    secondaryContainer: Color(0X9018ACFE),
    onPrimary: Color(0X90272727),
    onPrimaryContainer: Color(0XFFE6EEF5),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber500 => Color(0XFFFBBC05);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue50 => Color(0XFFEAF2FE);
  Color get blueA200 => Color(0XFF4285F4);
// BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF333333);
  Color get blueGray90001 => Color(0XFF283544);
// Gray
  Color get gray100 => Color(0XFFF3F3F3);
  Color get gray10090 => Color(0X90F6F6F6);
  Color get gray400 => Color(0XFFB4B4B4);
  Color get gray40001 => Color(0XFFC2C2C2);
  Color get gray800 => Color(0XFF404040);
  Color get gray80001 => Color(0XFF444444);
// Indigo
  Color get indigoA700 => Color(0XFF184AFE);
// LightGreen
  Color get lightGreen600 => Color(0XFF75B91F);
// Orange
  Color get orange500 => Color(0XFFFF9900);
  Color get orange50001 => Color(0XFFFF9901);
  Color get orangeA700 => Color(0XFFFF5B00);
// OrangeAAb
  Color get orangeA700Ab => Color(0XABFF6600);
// Purple
  Color get purple500 => Color(0XFFC40DA7);
  Color get purple700 => Color(0XFF850E98);
// PurpleAb
  Color get purple700Ab => Color(0XAB840E98);
// Red
  Color get red500 => Color(0XFFEB4335);
// White
  Color get whiteA700 => Color(0XFFFEFEFE);
  Color get whiteA70001 => Color(0XFFFFFFFF);
}
