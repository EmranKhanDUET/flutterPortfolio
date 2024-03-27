// Module7Class1

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
      // body: Container(
      //   height: 250,
      //   width: 250,
      //   margin: EdgeInsets.all(100),
      //   padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
      //   decoration: BoxDecoration(
      //     color: Colors.amber,
      //     border: Border.all(
      //       width: 10,
      //       color: Colors.green,
      //     ),
      //   ),
      //   child: CircleAvatar(
      //     child: ClipOval(
      //       child: Image.network(
      //           "https://avatars.githubusercontent.com/u/57840119?v=4"),
      //     ),
      //   ),
      // ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.limeAccent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purpleAccent, width: 4),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/57840119?v=4"),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green,
                // borderRadius: BorderRadius.circular(20),
                // border side er color same na hole circular border use kora jay nah

                // border: Border.all(color: Colors.purpleAccent,width: 5),
                border: Border(
                  left: BorderSide(color: Colors.purpleAccent, width: 5),
                  right: BorderSide(color: Colors.black, width: 5),
                  top: BorderSide(color: Colors.purpleAccent, width: 5),
                  bottom: BorderSide(color: Colors.purpleAccent, width: 5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.9),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3)//Changes the position of shadow
                  ),
                  // BoxShadow(
                  //     color: Colors.pink.withOpacity(.8),
                  //     spreadRadius: 10,
                  //     blurRadius: 5,
                  //     offset: Offset(0, -10)//Changes the position of shadow
                  // ),
                ]
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
