import 'package:flutter/material.dart';

class SearchFragment extends StatelessWidget {
  const SearchFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: Colors.green,
            size: 50,
          ),
          Text(
            "SEARCH",
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
