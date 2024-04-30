import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
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
            backgroundColor: Color(0XFFB2CAB00),
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
    AppBarTheme(centerTitle: true, color: Color(0XFFB2CAB00),
        titleTextStyle: TextStyle(
          color: Color(0XFFEFEFEF),
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600

        )
        // )
        );
