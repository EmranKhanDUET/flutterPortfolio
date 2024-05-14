import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: appBarTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0XFFDB3022),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 46),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}

AppBarTheme appBarTheme = const AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    titleTextStyle: TextStyle(
        color: Color(0XFFEFEFEF),
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600));
