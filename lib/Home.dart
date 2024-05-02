import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 24,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: CircleAvatar(
                    radius: 100,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: "https://avatars.githubusercontent.com/u/57840119?v=4",
                        placeholder: (context, url) => CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Emran Khan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                const SizedBox(height: 5),
                const Text(
                  'emrankhanent@gmail.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis luctus eros, in dictum ex. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vel libero in tortor elementum tincidunt a ut sapien. Phasellus vitae sem sit amet purus iaculis commodo. Sed ultrices mauris sapien, et varius justo faucibus sed. Curabitur vitae rutrum elit. Integer et ante urna. Duis ultrices egestas semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus feugiat enim eu tellus tristique iaculis. Donec at nisi placerat, mollis diam vehicula, ullamcorper ipsum. Etiam eu ante ac urna consectetur dignissim.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
