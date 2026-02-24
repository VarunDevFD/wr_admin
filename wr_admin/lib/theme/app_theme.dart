import 'package:flutter/material.dart';
import '../utils/borders.dart';

class AppTheme {
  static const secondaryColor = Color(0xFF34495E);
  static const primaryShadowColor = Color.fromARGB(255, 239, 143, 143);
  static const white = Colors.white;
  static const blackShadow = Color.fromARGB(99, 0, 0, 0); 
  static const primaryCardBgColor = Color.fromARGB(26, 239, 143, 143);

  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFFF4C2C2),
    scaffoldBackgroundColor: white,
    dividerColor: white,
    iconTheme: IconThemeData(
      color: secondaryColor,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    // Global InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        color: Color(0xFFA5A5A5),
        fontSize: 14,
      ),
      filled: true,
      fillColor: const Color(0xFFF5F5F7),
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder2,
      focusedBorder: outlineInputBorder,
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
      titleMedium: TextStyle(fontWeight: FontWeight.w700),
    ),
  );
}
