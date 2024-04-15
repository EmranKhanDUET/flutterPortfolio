import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text(
          "CounterApp",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text(
          n.toString(),
          style: const TextStyle(
            fontSize: 40,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () { n++;setState(() {

          }); },child: const Icon(Icons.add),),
          const SizedBox(width: 10,),
          FloatingActionButton(onPressed: () { n--;setState(() {

          }); },child: const Icon(Icons.remove),),
        ],
      ),
    );
  }
}
