import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color.fromRGBO(51, 51, 51, 1),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff333333),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.white.withOpacity(0.5),
      thickness: 1,
    ),
  );

  static final ThemeData lighTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromRGBO(229, 229, 229, 1),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.black.withOpacity(0.5),
      thickness: 1,
      //space: 5,
    ),
  );
}
