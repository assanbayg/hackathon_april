import 'package:flutter/material.dart';

const largeTextSize = 26;
const mediumTextSize = 20;
const smallTextSize = 16;

const Color textColor = Colors.black;

const String fontNameDefault = 'Quicksand';
const String fontNameTitle = '';

ThemeData basisTheme() => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.indigo,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: fontNameDefault,
      textTheme: const TextTheme(
        bodySmall: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor, fontSize: 16),
        bodyLarge: TextStyle(
          color: textColor,
          fontSize: 20,
        ),
        headlineSmall: TextStyle(
            color: textColor,
            fontFamily: fontNameDefault,
            fontWeight: FontWeight.w700),
        headlineMedium: TextStyle(
            color: textColor,
            fontFamily: fontNameDefault,
            fontWeight: FontWeight.w700),
        headlineLarge: TextStyle(
            color: textColor,
            fontFamily: fontNameDefault,
            fontWeight: FontWeight.w700),
        displayLarge: TextStyle(
            color: textColor,
            fontFamily: fontNameDefault,
            fontWeight: FontWeight.w700),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
          foregroundColor: textColor,
          fixedSize: const Size(200, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(fontFamily: fontNameDefault, fontSize: 18),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontFamily: fontNameDefault,
            fontSize: 15,
          ),
        ),
      ),
    );
