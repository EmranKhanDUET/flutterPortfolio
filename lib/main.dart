import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeUI(),
    debugShowCheckedModeBanner: false,
    );
  }
}


class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.amber,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.email,color: Colors.white,)),
      ],
      ),
    );
  }
}

