import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/loginpage.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home_Page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.lektonTextTheme()),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.cyan),
      routes: {
        // ignore: prefer_const_constructors
        // ignore: always_specify_types
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage()
      },
    );
  }
}
