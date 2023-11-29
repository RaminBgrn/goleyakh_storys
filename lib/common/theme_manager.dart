import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeData _myTheme = ThemeData(
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        fontFamily: 'mikhak',
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontFamily: 'mikhak',
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontFamily: 'mikhak',
        fontSize: 11,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'mikhak',
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'mikhak',
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        fontFamily: 'mikhak',
        fontSize: 12,
        fontWeight: FontWeight.w800,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        labelStyle: const TextStyle(
          fontFamily: 'mikhak',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        floatingLabelStyle: const TextStyle(
          fontFamily: 'mikhak',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
        hintStyle: const TextStyle(
          fontFamily: 'mikhak',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          // borderSide: BorderSide.none,
        )),
    useMaterial3: true,
  );
  static ThemeData get getTheme => _myTheme;
}
