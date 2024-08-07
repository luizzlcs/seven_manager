import 'package:flutter/material.dart';

final class SevenManagerTheme {
  static const tealBlue = Color(0xFF1D6077);
  static const greenYellow = Color(0xFFE1EC5F);
  static const lightCyan = Color(0xFFCFE1E3);
  static const redOrange = Color(0xFFFC3136);
  static const mediumSeaGreen = Color(0xFF30A56B);
  static const goldFusion = Color(0xFFD4BD6D);
  static const whiteColor = Color(0xFFFFFFFF);
  static const greyColor = Color(0xFF777777);
  static const blackColor = Color(0xFF000000);

  static final _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: tealBlue, width: 1));

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: whiteColor),
    useMaterial3: true,
    scaffoldBackgroundColor: tealBlue,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightCyan,
      labelStyle: const TextStyle(
        fontSize: 15,
        color: tealBlue,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle: const TextStyle(
        color: tealBlue,
        fontWeight: FontWeight.w600,
      ),
      isDense: true,
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(color: redOrange)
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: whiteColor,
        backgroundColor: tealBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          color: lightCyan,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
