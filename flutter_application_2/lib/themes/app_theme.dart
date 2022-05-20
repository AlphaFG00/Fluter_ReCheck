import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      //tema del appbar
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));

  static const Color primaryDark = Colors.purple;
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryDark,
      //tema del appbar
      appBarTheme: const AppBarTheme(
        color: primaryDark,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
