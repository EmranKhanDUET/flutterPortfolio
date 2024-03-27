import 'package:flutter/material.dart';

class PersonFragment extends StatelessWidget {
  const PersonFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            color: Colors.green,
            size: 50,
          ),
          Text(
            "PERSON",
            style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
