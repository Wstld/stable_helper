import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stable_helper/core/theme/colors.dart';

export 'package:stable_helper/core/theme/ui_helper.dart';

class AppTheme {
  static ThemeData get light {
    final ThemeData base = ThemeData.light();

    final TextTheme lightTextTheme = base.textTheme.copyWith(
      displayLarge: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w500),
      displayMedium: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w500),
      displaySmall: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w500),
      headlineLarge: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w500),
      headlineMedium: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w500),
      headlineSmall: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w500),
      titleLarge: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w400),
      titleMedium: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w400),
      titleSmall: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w400),
      labelSmall: GoogleFonts.poppins(
          color: ShColors.lightGrey, fontWeight: FontWeight.w300),
      labelMedium: GoogleFonts.poppins(
          color: ShColors.lightGrey, fontWeight: FontWeight.w300),
      labelLarge: GoogleFonts.poppins(
          color: ShColors.lightGrey, fontWeight: FontWeight.w300),
      bodySmall: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      bodyMedium: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      bodyLarge: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
    );

    final ColorScheme _colorScheme = base.colorScheme.copyWith(
      primary: ShColors.darkPink,
      secondary: ShColors.lightBlue,
      background: ShColors.lightGreen,
    );

    final ThemeData lightTheme = base.copyWith(
      textTheme: lightTextTheme,
      colorScheme: _colorScheme,
      scaffoldBackgroundColor: ShColors.lightGreen,
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: const TextStyle(
          height: 1,
        ),
        errorMaxLines: 2,
        contentPadding:
            const EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
        fillColor: Colors.white,
        focusColor: ShColors.black,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide.none),
      ),
    );

    return lightTheme;
  }
}
