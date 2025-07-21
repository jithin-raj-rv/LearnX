import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.black,
      secondary: Colors.white,
      tertiary: Colors.transparent,
      outline: Colors.black
    ),
    primaryColor: Colors.black,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.white,
      secondary: Colors.black,
      tertiary: Colors.transparent,
      outline: Colors.white
    ),
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
    ),
  );
}