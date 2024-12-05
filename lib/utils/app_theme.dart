import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(color: Colors.black),
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.grey,
    textTheme: TextTheme(
        bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style:
            ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black))),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.grey.shade800,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style:
            ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white))),
    textTheme: TextTheme(
        bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
    )),
  );
}
