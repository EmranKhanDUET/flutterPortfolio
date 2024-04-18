// Expanded => pura display k ekta row/column e niye flex onusare divide kore
//Module9Class2

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
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red,),flex:1),
          Expanded(child: Container(color: Colors.yellow,),flex:1),
          Expanded(child: Container(color: Colors.brown,),flex:1),
          Expanded(child: Container(color: Colors.green,),flex:1),
        ],
      )
    );
  }
}
