// Module7Prerecorded35~36

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice App",
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      home: HomeUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  mySnackbar(message, delay, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: delay),
        action: SnackBarAction(
            label: "OK",
            textColor: Colors.white,
            backgroundColor: Colors.green,
            onPressed: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Progress Indicator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.green,
              backgroundColor: Colors.red,
              strokeWidth: 10,
            ),
            Text(
              "Circular Progress Indicator",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
            LinearProgressIndicator(
              color: Colors.green,
              backgroundColor: Colors.red,
              minHeight: 5,
            ),
            Text(
              "Linear Progress Indicator",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
