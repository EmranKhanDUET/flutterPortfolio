import 'package:flutter/cupertino.dart';
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
      home: HomeUI(),
    );
  }
}

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  mySnackbar(message, delay, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(message),
        duration: Duration(seconds: delay),
        action: SnackBarAction(
            label: "OK",
            textColor: CupertinoColors.white,
            backgroundColor: Colors.green,
            onPressed: () {}),
      ),
    );
  }


  myAlertDialog({required context,required String title,required String content,required String button1,required String button2, }){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(onPressed: (){mySnackbar("NO PRESSED", 2,context);}, child: Text(button1)),
          TextButton(onPressed: (){mySnackbar("YES PRESSED",2, context);Navigator.pop(context);}, child: Text(button2)),

        ],
      );
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          "HOME",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        actions: [
          IconButton(
              onPressed: () {
                mySnackbar("Add ICON Pressed", 2, context);
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
          IconButton(
              onPressed: ()
                {
                  myAlertDialog(context: context, title: "Alert Dialog !", content: "Do you want to delete the item ?", button1: "NO", button2: "YES");
                },


              icon: Icon(
                Icons.delete,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}



// showDialog(context: context, builder: (context){
// return AlertDialog(
// title: Text("ALERT!"),
// content: Text("Do you want to close the alert dialog ?"),
// actions: [
// TextButton(onPressed: (){mySnackbar("NO PRESSED", 2,context);}, child: Text("No")),
// TextButton(onPressed: (){mySnackbar("YES PRESSED",2, context);Navigator.pop(context);}, child: Text("YES")),
//
// ],
// );
// });

