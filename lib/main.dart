import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/Pages/loginpage.dart';
import 'package:flutter_application_1/widgets/themes.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: myTheme.lightTheme(context),
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //   primaryTextTheme: GoogleFonts.lektonTextTheme(),
      // ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan,
      ),
      //initialRoute: HomePage(),
      // home: const HomePage(
      //   name: '',
      // ),
      routes: {
        // ignore: prefer_const_constructors
        '/': (context) => HomePage(
              name: '',
            ),
        // ignore: prefer_const_constructors
        '/home': (context) => HomePage(
              name: '',
            ),
        // ignore: prefer_const_constructors
        '/login': (context) => LoginPage()
      },
    );
  }
}
