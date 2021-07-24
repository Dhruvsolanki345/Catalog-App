import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/Home.dart';
import 'package:flutter_app1/pages/Login.dart';
import 'package:flutter_app1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
      },
    );
  }
}
