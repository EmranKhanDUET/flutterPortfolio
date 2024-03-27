import 'package:flutter/material.dart';

class SettingFragment extends StatelessWidget {
  const SettingFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.settings,
            color: Colors.green,
            size: 50,
          ),
          Text(
            "SETTING",
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
