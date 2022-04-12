import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stable_helper/core/theme/colors.dart';

export 'package:stable_helper/core/theme/ui_helper.dart';

class AppTheme {
  static ThemeData get light {
    final ThemeData base = ThemeData.light();

    final TextTheme lightTextTheme = base.textTheme.copyWith(
      displayLarge: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      displayMedium: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      displaySmall: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      headlineLarge: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      headlineMedium: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
      headlineSmall: GoogleFonts.poppins(
          color: ShColors.black, fontWeight: FontWeight.w300),
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
      background: ShColors.sand,
    );

    final ThemeData lightTheme = base.copyWith(
        textTheme: lightTextTheme,
        colorScheme: _colorScheme,
        scaffoldBackgroundColor: ShColors.background,
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(
            color: Colors.red,
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
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(ShColors.sand),
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return ShColors.darkPink;
            } else {
              return const Color.fromARGB(255, 224, 238, 211);
            }
          }),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(minimumSize: const Size(130, 40))));

    return lightTheme;
  }
}
