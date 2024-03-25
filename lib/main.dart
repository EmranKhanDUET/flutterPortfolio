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

  var inpItem = [
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Emra1n"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Kha2n"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Parve3j"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "M4D"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Emra5n"
    },
  ];



  mySnackbar(message, delay, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
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
          "ListViewBuilder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: inpItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {mySnackbar(inpItem[index]['title'], 2, context);},
            // onDoubleTap:
            // onLongPress: ,
            //
            child: Container(
              margin: EdgeInsets.all(10),
              height: 250,
              width: double.infinity,
              child: Image.network(
                inpItem[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
