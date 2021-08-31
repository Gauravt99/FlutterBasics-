import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class myTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.lektonTextTheme(),
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.light);
}
