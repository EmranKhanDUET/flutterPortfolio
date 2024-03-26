// Modeule7Class1
// TextFormField and TextField almost same, TextFormField e shudumatro validator namok ekta extra properties ase
// validator diye text validation kora jay
//


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
        child: Padding(
          padding: EdgeInsets.all(60),
          child: TextField(
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            // controller: TextEditingController(),
            maxLength: 10,

            decoration: InputDecoration(
              // enabled: false,
              // amader at least focusedborder and enabledborder define kore dite hobe
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.yellow, width: 5)),
              enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.red, width: 5)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey, width: 5)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.green, width: 5)),
              hintText: "Enter Your name",
              hintStyle: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              labelText: "NAME",
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.add),
              prefixIconColor: Colors.green,
              suffixIcon: Icon(Icons.remove_red_eye),
              suffixIconColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
