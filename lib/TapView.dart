import 'package:flutter/material.dart';
import 'package:flutter_portfolio/LandascapeTapView.dart';
import 'package:flutter_portfolio/PortraitTapView.dart';

class TapView extends StatelessWidget {
  int index;
  List data;

  TapView({super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data[index]['title']),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0XFFFAFAFA),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Color(0XFF7ACA5E),
          ),
        ),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitTapView(index: index, data: data);
        } else {
          return LandascapeTapView(index: index, data: data);
        }
      })
    );
  }
}
