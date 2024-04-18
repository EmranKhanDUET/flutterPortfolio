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
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.green,
            );
          } else
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.red,
            );
        }));
  }
}
