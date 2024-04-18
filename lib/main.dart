// wrap => an extended row which has a feature ,
// zodi ek line e na dhore taile porer line e
// pathaia dey


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      home: HomeUI(),
    );
  }
}

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APPBAR"),
        backgroundColor: Colors.amber,
      ),
      body: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 10,
        children: [
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
          Text(MediaQuery.orientationOf(context).toString()),
        ],
      ),
    );
  }
}
