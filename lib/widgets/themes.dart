import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: Theme.of(context).textTheme,
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishCOlor = Color(0xff403b58);
}
