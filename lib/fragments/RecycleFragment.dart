import 'package:flutter/material.dart';

class RecycleFragment extends StatelessWidget {
  const RecycleFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.recycling,
            color: Colors.green,
            size: 50,
          ),
          Text(
            "RECYCLE",
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
