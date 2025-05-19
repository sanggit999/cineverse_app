import 'package:flutter/material.dart';

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
      background: Colors.white,
      surface: Colors.white,
      error: Colors.red,
      onError: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0D0D0D),
    primaryColor: const Color(0xFF0D0D0D),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF0D0D0D),
      secondary: Color(0xFFE50914),
      background: Color(0xFF0D0D0D),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.black,
    ),
  );
}
