import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice App",
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      home: HomeUI(),
      debugShowCheckedModeBanner: false,
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
        title: Text("AppBar",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.green,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                mySnackbar("Search", 2, context);
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
        elevation: 10,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "PROFILE",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "SETTING",
          ),
        ],
        currentIndex: 1,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.brown,
        onTap: (int index) {
          if (index == 0) {
            mySnackbar("HOME", 2, context);
          } else if (index == 1) {
            mySnackbar("PROFILE", 2, context);
          }
          if (index == 2) {
            mySnackbar("SETTING", 2, context);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackbar("FloatingActionButton", 2, context);
        },
        child: Icon(Icons.add),
        elevation: 20,
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("EMRAN"),
              accountEmail: Text("EMRAN@GMAIL>COM"),
              decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                      image: NetworkImage(
                          "data:image/jpeg;base64,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"),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://avatars.githubusercontent.com/u/57840119?v=4",
                  ),
                ),
              ),
              onDetailsPressed: () {
                mySnackbar("PROFILE PICTURE", 2, context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                mySnackbar("HOME", 2, context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("PROFILE"),
              onTap: () {
                mySnackbar("PROFILE", 2, context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTING"),
              onTap: () {
                mySnackbar("SETTING", 2, context);
              },
            ),
          ],
        ),
      ),
    );
  }
}