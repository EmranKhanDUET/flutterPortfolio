// Module9Class1

import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Photo Gallery",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints) {
          if (constraints.maxWidth <= 400) {
            return Container(height: 200, width: 200, color: Colors.red,);
          }
          else if (constraints.maxWidth <= 600) {
            return Container(height: 400, width: 500, color: Colors.green,);
          }
          else {
            return Container(height: 800, width: 900, color: Colors.cyan,);
          }
        }
      )
    );
  }
}
