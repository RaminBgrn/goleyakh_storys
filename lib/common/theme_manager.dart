import 'package:flutter/material.dart';
import 'package:goleyakh_storys/static/colors.dart';

class ThemeManager {
  static final ThemeData _myTheme = ThemeData(
    primaryColor: myGrey[700],
    colorScheme: ColorScheme.light(
      primary: myGrey[700]!,
      secondary: myGrey[500]!,
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(fontFamily: 'mikhak', fontSize: 14, fontWeight: FontWeight.bold, color: myGrey[200]!),
      labelMedium: TextStyle(fontFamily: 'mikhak', fontSize: 12, fontWeight: FontWeight.w500, color: myGrey[200]!),
      labelSmall: TextStyle(fontFamily: 'mikhak', fontSize: 11, fontWeight: FontWeight.w300, color: myGrey[200]!),
      bodyLarge: TextStyle(fontFamily: 'mikhak', fontSize: 16, fontWeight: FontWeight.bold, color: myGrey[200]!),
      bodyMedium: TextStyle(fontFamily: 'mikhak', fontSize: 14, fontWeight: FontWeight.w700, color: myGrey[200]!),
      bodySmall: TextStyle(fontFamily: 'mikhak', fontSize: 12, fontWeight: FontWeight.w800, color: myGrey[200]!),
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        labelStyle: TextStyle(fontFamily: 'mikhak', fontSize: 14, fontWeight: FontWeight.w600, color: myGrey[200]!),
        floatingLabelStyle: TextStyle(fontFamily: 'mikhak', fontSize: 14, fontWeight: FontWeight.w500, color: myGrey[200]!),
        fillColor: myGrey[600],
        filled: true,
        hintStyle: TextStyle(fontFamily: 'mikhak', fontSize: 14, fontWeight: FontWeight.w600, color: myGrey[200]!),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          // borderSide: BorderSide.none,
        )),
    useMaterial3: true,
  );
  static ThemeData get getTheme => _myTheme;
}
