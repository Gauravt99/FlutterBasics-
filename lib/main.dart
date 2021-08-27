import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/loginpage.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/utilities/MyRoutes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home_Page(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.lektonTextTheme()),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.cyan),
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
