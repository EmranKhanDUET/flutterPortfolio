import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Photo Gallery",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Welcome to My Photo Gallery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  // childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://avatars.githubusercontent.com/u/57840119?v=4",
                        fit: BoxFit.cover,
                      ),
                      Text("Photo $index")
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: ClipOval(
                            child: Image.network(
                              "https://avatars.githubusercontent.com/u/57840119?v=4",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Photo $index ",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Description of Photo $index",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.7)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: IconButton(
                icon: Icon(
                  Icons.cloud_upload,
                  color: Colors.blue,
                  size: 50,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
