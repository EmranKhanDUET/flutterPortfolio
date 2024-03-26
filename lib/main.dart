// GetsureDetector => anything can be convertable into an button ,but there won't be any splash
// InkWll => same as GetsureDetector ,also splash will be seen
// For minimum power consumtion and optimized performance, we should try to use inkwell insted of getsureDetector



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
            GestureDetector(

              onTap: (){print("Tap");},
              onDoubleTap: (){print("Tap Tap");},
              onLongPress: (){print("LOng Pressed");},
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ),
            InkWell(
              splashColor: Colors.yellow,
              radius: 100,
              borderRadius: BorderRadius.circular(30),
              onTap: (){print("Tap");},
              onDoubleTap: (){print("Tap Tap");},
              onLongPress: (){print("LOng Pressed");},
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            )

          ],
        )
      ),
    );
  }
}
