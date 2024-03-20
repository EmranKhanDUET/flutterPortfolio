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
        appBar: AppBar(
          title: Text("AppBAR"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            height: 250,
            width: 250,
            margin: EdgeInsets.all(100),
            padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                width: 10,
                color: Colors.green,
              ),
            ),
            child: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    "https://avatars.githubusercontent.com/u/57840119?v=4"),
              ),
            )));
  }
}
