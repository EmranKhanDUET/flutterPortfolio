import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: appBarTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffb2cab00),
            foregroundColor: Colors.white,
            minimumSize:
                Size(double.infinity, MediaQuery.of(context).size.height * .1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}

AppBarTheme appBarTheme =
    const AppBarTheme(centerTitle: true, color: Color(0xffb2cab00),
        titleTextStyle: TextStyle(
          color: Color(0XFFEFEFEF),
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600

        )
        // )
        );
