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
  List<String> studentList = [
    'Jahid',
    'Nayeem',
    'Abir',
    'Hasan',
    'Tonu'
  ];

  mySnackbar(message, delay, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
        duration: Duration(seconds: delay),
        action: SnackBarAction(
            label: "OK",
            textColor: Colors.white,
            backgroundColor: Colors.green,
            onPressed: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridViewBuilder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 0,
      //       crossAxisSpacing: 5,
      //       childAspectRatio: 1.3),
      //   itemCount: inpItem.length,
      //   itemBuilder: (context, index) {
      //     return GestureDetector(
      //       onTap: () {
      //         mySnackbar(inpItem[index]['title'], 2, context);
      //       },
      //       child: Container(
      //         margin: EdgeInsets.all(1),
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: false,
                primary: false,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("Roll : ${index + 1}",style: TextStyle(fontSize: 40,color: Colors.blue,),);
                }),

            // ListView.builder(
            //   shrinkWrap: true,
            //   primary: false,
            //   itemCount: studentList.length,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         children: [
            //           Text(
            //             studentList[index],
            //             style: TextStyle(fontSize: 18),
            //           ),
            //           Divider()
            //         ],
            //       ),
            //     );
            //   },
            // ),



            // GridView.builder(
            //   shrinkWrap: true,
            //   primary: false,
            //   itemCount: 20,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 20,
            //     crossAxisSpacing: 20,
            //     childAspectRatio: 1.5,
            //   ),
            //   itemBuilder: (context, index) {
            //     return Center(
            //       child: Text(
            //         "Serial : ${index + 1}",
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
