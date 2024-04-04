import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterApp"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          n.toString(),
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              n--;
              setState(() {

              });
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              n++;
              setState(() {

              });
            },
            child: Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
