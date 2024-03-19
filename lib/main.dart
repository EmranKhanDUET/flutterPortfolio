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
        child: Text(
          "HELLO World, This is Emran speaking. How are you aLL? lsdfmnksvajk bjkldsfabjklfv bjklasdbjkladbjl bjklsdgafbjklsgabjklg bjklasdbjklasbkjbkj jkjkb",
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.green,
            backgroundColor: Colors.pink,
            fontSize: 20,
            fontWeight: FontWeight.w100
          ),
        ),
      ),
    );
  }
}
