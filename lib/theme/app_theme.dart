import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF16A34A);
  static const Color secondaryColor = Color(0xFF86EFAC);
  static const Color backgroundColor = Color(0xFF062312);
  static const Color surfaceColor = Color(0xFF0D3B1E);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
