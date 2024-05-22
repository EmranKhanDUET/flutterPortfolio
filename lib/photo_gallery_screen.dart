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
      body: Visibility(
        visible: _getPhotoInProgress == false,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.separated(
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return _buildListTile(context, index);
            },
            separatorBuilder: (_, __) => const SizedBox(
                  height: 10,
                )),
      ),
    );
  }

  ListTile _buildListTile(BuildContext context, int index) {
    return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => PhotoDetails(
                          title: photos[index].title,
                          id: photos[index].id,
                          url: photos[index].url)),
                );
              },
              leading: Image.network(
                photos[index].thumbnailUrl,
              ),
              title: Text(
                photos[index].title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 26),
              ),
            );
  }

  Future<void> _getPhotoList() async {
    photos.clear();
    _getPhotoInProgress = true;
    setState(() {});

    try {
      const String getPhotoListUrl =
          'https://jsonplaceholder.typicode.com/photos';
      Response response = await get(Uri.parse(getPhotoListUrl));
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
            content: Text('Photo List Loaded Successfully')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Get Photo List Failed,Try again !')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text("Failed to load data : Error ")));
    }
  }
}
