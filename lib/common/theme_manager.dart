import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData _myTheme = ThemeData(
    textTheme: TextTheme(
      labelLarge: GoogleFonts.karla(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.bold),
      labelMedium: GoogleFonts.karla(
        fontSize: 12,
        color: Colors.grey.shade500,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.karla(
        fontSize: 11,
        color: Colors.grey.shade500,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: GoogleFonts.karla(
        fontSize: 16,
        color: Colors.grey.shade800,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.karla(
        fontSize: 14,
        color: Colors.grey.shade700,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: GoogleFonts.karla(
        fontSize: 12,
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w300,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelStyle: GoogleFonts.karla(
          fontSize: 18,
          color: Colors.grey.shade600,
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
        hintStyle: GoogleFonts.karla(
          fontSize: 14,
          color: Colors.grey.shade300,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          // borderSide: BorderSide.none,
        )),
    useMaterial3: true,
  );
  static ThemeData get getTheme => _myTheme;
}
