import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      home: HomeUI(),
    );
  }
}

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RichText(
        text: TextSpan(
            text: "Hello ",
            style: TextStyle(color: Colors.amber, backgroundColor: Colors.cyan),
            children: [
              TextSpan(
                  text: "This is me ",
                  style: TextStyle(
                      color: Colors.red, backgroundColor: Colors.green)),
              TextSpan(
                  text: "YOur Emran ",
                  style: TextStyle(
                      color: Colors.brown, backgroundColor: Colors.white)),
              TextSpan(text: "Nice to Meet you"),
            ]),
      )),
    );
  }
}
