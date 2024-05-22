import 'package:flutter/material.dart';

class PhotoDetails extends StatelessWidget {
  final String title;
  final int id;
  final String url;
   const PhotoDetails({required this.title, required this.id,required this.url, super.key});

  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
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
                Text('Title: $title',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                const SizedBox(height: 10,),
                Text('ID: $id',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
