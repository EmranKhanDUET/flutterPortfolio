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
                          "https://lh3.googleusercontent.com/proxy/SroLP4ijphE8XsxHKENXqc5X49RiMV-dVdGlr1rJhWGKN6gTMUa148TUj9oBw_RJs6RYhc_AoFwMZ-mRGIb6yYwWwtHlBqp4hFkwV8NT7redOrkzgfzXTvteGQ"),
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

                // comment
              },
            ),
          ],
        ),
      ),
    );
  }
}
