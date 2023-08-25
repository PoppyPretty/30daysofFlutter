import 'package:flutter/material.dart';
import 'package:poppy_catalog/screens/home_page.dart';
import 'package:poppy_catalog/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poppy_catalog/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": ((context) => const LoginPage()),
        MyRoutes.loginRoute: ((context) => const LoginPage()),
        MyRoutes.homeRoute: ((context) => const HomePage()),
      },
    );
  }
}
