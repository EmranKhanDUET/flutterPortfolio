import 'package:flutter/material.dart';

class CurrencyFragment extends StatelessWidget {
  const CurrencyFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.currency_exchange,
            color: Colors.green,
            size: 50,
          ),
          Text(
            "CURRENCY",
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
