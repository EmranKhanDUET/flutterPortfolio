import 'package:flutter/material.dart';
import 'package:flutter_portfolio/photo_gallery_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: _lightThemeData(),
      home: const PhotoGalleryScreen(),
    );
  }

  ThemeData _lightThemeData() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
