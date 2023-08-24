import 'package:flutter/material.dart';
import 'package:poppy_catalog/screens/home_page.dart';
import 'package:poppy_catalog/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": ((context) => const LoginPage()),
        "/login": ((context) => const LoginPage()),
        "/home": ((context) => const HomePage()),
      },
    );
  }
}
