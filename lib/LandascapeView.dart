import 'package:flutter/material.dart';

import 'TapView.dart';

class LandascapeView extends StatelessWidget {

  List data;
  LandascapeView({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TapView(
                        index: index,
                        data: data,
                      )));
            },
            child: Card(
              shadowColor: const Color(0XFF000000),
              elevation: 10,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                margin: const EdgeInsets.all(1),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(
                        data[index]["link"]!,
                      ),
                      fit: BoxFit.fill,
                    )),
                padding: const EdgeInsets.all(30),
                alignment: Alignment.bottomLeft,
                child: Text(
                  data[index]['title']!,
                  style: const TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,

                  ),

                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
