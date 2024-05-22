import 'package:flutter/material.dart';
import 'package:flutter_portfolio/photo.dart';

class PhotoDetails extends StatelessWidget {
  String title;
  int id;
  String url;
   PhotoDetails({required this.title, required this.id,required this.url, super.key});

  
  
  
  @override
  Widget build(BuildContext context) {
    var photo;
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(url),
                const SizedBox(height: 10,),
                Text('Title: $title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                const SizedBox(height: 10,),
                Text('ID: $id',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
