import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/photo.dart';
import 'package:flutter_portfolio/photo_details.dart';
import 'package:http/http.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({super.key});

  @override
  State<PhotoGalleryScreen> createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  bool _getPhotoInProgress = false;
  List<Photo> photos = [];

  @override
  void initState() {
    _getPhotoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery App'),
      ),
      body: RefreshIndicator(
        onRefresh: _getPhotoList,
        child: Visibility(
          visible: _getPhotoInProgress == false,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: Visibility(
            visible: _getPhotoInProgress == false,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ListView.separated(
                itemCount: photos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>PhotoDetails(title: photos[index].title, id: photos[index].id, url: photos[index].url)
                        ),
                      );
                    },
                    leading: Image.network(
                      photos[index].thumbnailUrl,),





                    title: Text(
                      photos[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 26
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(
                      height: 10,
                    )),
          ),
        ),
      ),
    );
  }

  Future<void> _getPhotoList() async {
    photos.clear();
    _getPhotoInProgress = true;
    setState(() {});

    const String getPhotoListUrl =
        'https://jsonplaceholder.typicode.com/photos';
    Uri getPhotoListuri = Uri.parse(getPhotoListUrl);
    Response response = await get(getPhotoListuri);

    if (response.statusCode == 200) {
      var outputJsonData = jsonDecode(response.body);

      for (var i in outputJsonData) {
        Photo photo = Photo(
          albumId: i['albumId'] ?? 0,
          id: i['id'] ?? 0,
          title: i['title'] ?? '',
          url: i['url'] ?? '',
          thumbnailUrl: i['thumbnailUrl'] ?? '',
        );

        photos.add(photo);
      }

      _getPhotoInProgress = false;
      setState(() {});
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Get Photo List Successfully')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Get Photo List Failed,Try again !')));
    }
  }
}
