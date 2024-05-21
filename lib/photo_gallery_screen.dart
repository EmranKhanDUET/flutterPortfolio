import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({super.key});

  @override
  State<PhotoGalleryScreen> createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  bool _getPhotoInProgress = false;

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
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network('https://via.placeholder.com/150/92c952',height: 80,width: 80,fit: BoxFit.fitHeight,),
              title: Text(
                'accusamus beatae ad facilis cum similique qui sunt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _getPhotoList() async {
    _getPhotoInProgress = true;
    setState(() {});

    const String getPhotoListUrl =
        'https://jsonplaceholder.typicode.com/photos';
    Uri uri = Uri.parse(getPhotoListUrl);
    Response response = await get(uri);

    if(response.statusCode==200){
      _getPhotoInProgress=false;
      setState(() {

      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Get Photo List Successfully')));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.white,
          content: Text('Get Photo List Faild,Try again !')));
    }

  }
}
