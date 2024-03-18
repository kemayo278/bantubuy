import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfigTheme {
  
  // Définition des couleurs
  static const Color primaryColor = Color(0xFFFF5733);
  static const Color secondaryColor = Color(0xFF3361FF);

  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);

  static const Color blackColor = Color.fromARGB(255, 0, 0, 0);

  static const Color greywhiteColor = Color(0xFFEEEEEE);

  // Définition des styles de texte
  static TextStyle buildTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    Color? decorationColor,
  }) {
    return GoogleFonts.nunito(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Colors.black,
      decoration: decoration ?? TextDecoration.none,
      decorationColor: decorationColor,
    );
  }


   // Définition des polices
  static const String primaryFontFamily = 'Roboto';
  static const String secondaryFontFamily = 'Montserrat';

  // Définition des styles de texte
  static const TextStyle titleTextStyle = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const TextStyle subtitleTextStyle = TextStyle(
    fontFamily: secondaryFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: secondaryColor,
  );

}
