// Expanded => pura display k ekta row/column e niye flex onusare divide kore


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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${MediaQuery.sizeOf(context)}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            Text("${MediaQuery.of(context).size.width}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            Text("${MediaQuery.of(context).size.height}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            Text("${MediaQuery.orientationOf(context)}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            Text("${MediaQuery.of(context).orientation}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
          ],
        ),
      )
    );
  }
}
