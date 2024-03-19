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
          child:
          // Image.network("https://avatars.githubusercontent.com/u/57840119?v=4"),
          // Image.asset(
          //   "images/dp.png",
          //   height: 200,
          //   width: 200,
          //   fit: BoxFit.scaleDown,
          // ),
          Image.asset("images/panda.jpg")
        ),
    );
  }
}
