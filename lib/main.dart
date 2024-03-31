// Module7Prerecorded35~36
// Module7Class3

// ListView is nothing but a column with SingleChildScrollView widged in rapped condition

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
    );
  }
}

class HomeUI extends StatelessWidget {
  HomeUI({super.key});

  var inpItem = [
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Emra1n"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Kha2n"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Parve3j"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "M4D"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/57840119?v=4",
      "title": "Emra5n"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilderSeparator"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //       Text("Hello",style: TextStyle(fontSize: 40,),),
      //
      //     ],
      //   ),
      // ),

      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //           Text("Hello",style: TextStyle(fontSize: 40,),),
      //
      //   ],
      // ),

      // body: ListView.builder(
      //   itemCount: inpItem.length,
      //   itemBuilder: (context, index) {
      //     return GestureDetector(
      //       onTap: () {print(inpItem[index]['title']);},
      //       // onDoubleTap:
      //       // onLongPress: ,
      //       //
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         height: 250,
      //         width: double.infinity,
      //         child: Image.network(
      //           inpItem[index]["img"]!,
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //     );
      //   },
      // ),

      // body: ListView.builder(
      //   itemCount: 15,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: EdgeInsets.all(20),
      //       child: Column(
      //         children: [
      //           Text(
      //             "Hello ${index + 1}",
      //             style: TextStyle(fontSize: 20),
      //             textAlign: TextAlign.start,
      //           ),
      //           Divider(
      //             height: 10,
      //             thickness: 10,
      //             color: Colors.pink,
      //             indent: 25,
      //             endIndent: 50,
      //           )
      //         ],
      //       ),
      //     );
      //   },
      // ),

      body: ListView.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Hello ${index + 1}",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 10,
            thickness: 10,
            color: Colors.blue,
            indent: 25,
            endIndent: 50,
          );
        },

      ),
    );
  }
}
