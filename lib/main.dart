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
        title: Text("APPBAR"),
        backgroundColor: Colors.amber,
        titleSpacing: 10,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                mySnackbar("Search", 5, context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackbar("Message", 5, context);
              },
              icon: Icon(Icons.message)),
          IconButton(
              onPressed: () {
                mySnackbar("Email", 5, context);
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                mySnackbar("Help", 5, context);
              },
              icon: Icon(Icons.help)),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "SETTING"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "CONTACT"),
        ],
        onTap: (int index){
          if(index==0){
            mySnackbar("HOME BUTTON", 2, context);
          }
          else   if(index==1){
            mySnackbar("SETTING BUTTON", 2, context);
          }
          else   if(index==2){
            mySnackbar("CONTACT BUTTON", 2, context);
          }
        },
        currentIndex: 1,
        elevation: 0,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.brown,


      ),
    );
  }
}
