// Module7Prerecorded34

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeUI(),
    );
  }
}

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.purpleAccent,
          elevation: 100,
          color: Colors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text(
                "CARD",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
