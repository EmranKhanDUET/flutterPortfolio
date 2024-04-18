import 'package:responsive_grid/responsive_grid.dart';

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
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.red,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.brown,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.cyan,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.amber,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.blue,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.black,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.amber,
                ),
              ), ResponsiveGridCol(
                xs: 12,
                sm: 6,
                md: 4,
                lg: 3,
                xl: 2,
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ));
  }
}
