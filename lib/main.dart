import 'package:flutter/material.dart';
import 'package:flutter_portfolio/HomeUI.dart';

void main(){
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeUI(),
      debugShowCheckedModeBanner: false,
      title: "",
    );
  }
}
