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
  HomeUI({super.key});

  ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    foregroundColor: Colors.white,
    minimumSize: Size(double.infinity, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        width: 5,
        color: Colors.green,
      ),
    ),
    // padding: EdgeInsets.all(20),
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
    textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  );

  ButtonStyle textButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.red,
    textStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Inventory App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("TEXT BUTTON"),
              style: textButtonStyle,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated  BUTTON"),
              style: elevatedButtonStyle,
            ),
            OutlinedButton(onPressed: () {}, child: Text("Outlined BUTTON")),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,color: Colors.purple,size: 100,))
          ],
        ),
      ),
    );
  }
}
