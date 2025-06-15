import 'package:cineverse_app/core/theme/elevated_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:cineverse_app/core/theme/input_decoration_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xFF0D0D0D),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0D0D0D),
      onPrimary: Colors.white,
      secondary: Color(0xFFE50914),
      onSecondary: Colors.white,
      surface: Colors.white,
      error: Colors.red,
      onError: Colors.white,
    ),
    inputDecorationTheme: lightInputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0D0D0D),
    primaryColor: const Color(0xFF0D0D0D),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF0D0D0D),
      secondary: Color(0xFFE50914),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.black,
    ),
    inputDecorationTheme: darkInputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );
}
