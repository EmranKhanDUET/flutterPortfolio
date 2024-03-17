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
        ],
      ),





      drawer: Drawer(
        backgroundColor: Colors.amberAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(color: Colors.deepOrange),
              child: UserAccountsDrawerHeader(
                accountName: Text("EMRAN",style: TextStyle(color: Colors.black),),
                accountEmail: Text("EMRAN@GMAIL.COM",style: TextStyle(color: Colors.black),),
                decoration: BoxDecoration(color: Colors.white),
                currentAccountPicture: Image.network("https://static-00.iconduck.com/assets.00/github-icon-2048x2048-eyd5tyuo.png"),
                onDetailsPressed: (){
                  mySnackbar("DrawerHeader", 2, context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                mySnackbar("HOME", 2, context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTING"),
              onTap: () {
                mySnackbar("SETTING", 2, context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("CONTACT"),
              onTap: () {
                mySnackbar("CONTACT", 2, context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
