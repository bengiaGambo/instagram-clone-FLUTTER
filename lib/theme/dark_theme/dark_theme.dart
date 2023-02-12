import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/colors.dart';
import 'borders.dart';

class DarkTheme {
  ThemeData darkTheme = //
      ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryBlue,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: -0.15),
      labelSmall: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: primaryBlue,
          letterSpacing: -0.15),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: disabledButtonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        minimumSize: const Size(double.infinity, 44),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    // input decoration +++++++++++++++++++++++++++++
    inputDecorationTheme: InputDecorationTheme(
      outlineBorder: BorderSide.none,
      fillColor: bgColorTextField,
      filled: true,
      isDense: true,
      focusedBorder: MyBorder().focussedTextField(),
      border: MyBorder().borderTextField(),
      hintStyle: GoogleFonts.sourceSansPro(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: -0.15,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    ),

    // input decoration -------------------------------------
  );
}
