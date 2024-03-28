// Module7Prerecorded32~33

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
        title: Text("HOME"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("ACTIVITY 1"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Activity1("This is from Home to Activity 1"),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("ACTIVITY 2"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Activity2("This is from Home to Activity 2"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  String msg;
  Activity1(this.msg,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Activity 1",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            ElevatedButton(
              child: Text("ACTIVITY 2"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Activity2("This is from Activity 1 to Activity 2"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  String msg;
   Activity2(this.msg,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Activity 1",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 40),),
            ElevatedButton(
              child: Text("Go ACTIVITY 1"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Activity1("This is from Activity 2 to Activity 1"),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}