// Module7Prerecorded32~33
// Module8Liveclass1



// push & pop  => stack data structure
//pushReplace use korle current context replace hoye jabe
// pushAndRemoveUntill use kore current context er previous sob context remove hoye jabe


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

// class HomeUI extends StatelessWidget {
//   const HomeUI({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("HOME"),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               child: Text("ACTIVITY 1"),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => Activity1("This is from Home to Activity 1"),
//                   ),
//                 );
//               },
//             ),
//             ElevatedButton(
//               child: Text("ACTIVITY 2"),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => Activity2("This is from Home to Activity 2"),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Activity1 extends StatelessWidget {
//   String msg;
//   Activity1(this.msg,{super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(msg),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Activity 1",
//               style: TextStyle(
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40),
//             ),
//             ElevatedButton(
//               child: Text("ACTIVITY 2"),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => Activity2("This is from Activity 1 to Activity 2"),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Activity2 extends StatelessWidget {
//   String msg;
//    Activity2(this.msg,{super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(msg),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Activity 1",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 40),),
//             ElevatedButton(
//               child: Text("Go ACTIVITY 1"),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => Activity1("This is from Activity 2 to Activity 1"),
//                   ),
//                 );
//               },
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Setting();
                }));
              },
              child: Text("Go to Setting"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Text("Go to Profile"),
            )
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text("PROFILE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Setting(),
                  ),
                );
              },
              child: Text("Go to Setting"),
            )
          ],
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text("Back to previous"),
            ),
            ElevatedButton(
              onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeUI()), (route) => false);},
              child: Text("Go to Home"),
            )
          ],
        ),
      ),
    );
  }
}
