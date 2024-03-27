import 'package:flutter/material.dart';

class homeFragment extends StatelessWidget {
  const homeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "HOME",
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    );
  }
}
