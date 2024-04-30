import 'package:flutter/material.dart';

import 'TapView.dart';

class PortraitTapView extends StatelessWidget {
  int index;
  List data;

  PortraitTapView({super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              shadowColor: Color(0XFF000000),
              elevation: 30,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                // margin: EdgeInsets.all(1),
                height: 325,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(
                        data[index]["link"]!,
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              // height: 20,
              width: double.infinity,

              child: Text(
                data[index]['label'],
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                data[index]['description'],
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'See More',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Color(0XFFFFFFFF)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Suggestions',
                style: TextStyle(
                  color: Color(0XFF2CAB00),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1.3),
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
                    shadowColor: Color(0XFF000000),
                    elevation: 30,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      margin: EdgeInsets.all(1),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage(
                            data[index]["link"]!,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      padding: EdgeInsets.all(30),
                      child: Text(
                        data[index]['title']!,
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
