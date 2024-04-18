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
        child: FractionallySizedBox(
          heightFactor: .2,
          widthFactor: .7,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
