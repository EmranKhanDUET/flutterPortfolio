import 'package:flutter/material.dart';

class AlarmFragment extends StatelessWidget {
  const AlarmFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.alarm,
            color: Colors.green,
            size: 50,
          ),
          Text(
            "ALARM",
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
