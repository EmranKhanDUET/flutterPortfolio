import 'package:flutter/material.dart';
import 'package:flutter_portfolio/LandascapeView.dart';
import 'package:flutter_portfolio/PortraitView.dart';

import 'TapView.dart';

class Home extends StatelessWidget {
  Home({super.key});

  var data = [
    {
      'title': 'Mood',
      'label': 'Mood With Nature',
      'link':
          'assets/images/mood.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Asthetic',
      'label': 'Asthetic With Nature',
      'link':
          'assets/images/asthetic.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Animals',
      'label': 'Animals in Jungle',
      'link':
          'assets/images/animals.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'City',
      'label': 'Modern City',
      'link':
          'assets/images/city.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Travel',
      'label': 'Travel to grow',
      'link':
          'assets/images/travel.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Sky',
      'label': 'Sky with dreams',
      'link':
         'assets/images/sky.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Road',
      'label': 'Road with concrete',
      'link': 'assets/images/road.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Flowers',
      'label': 'Flowers with Nature',
      'link':'assets/images/flowers.jpg',
      'description':
          'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Mood',
      'label': 'Mood With Nature',
      'link':
      'assets/images/mood.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Asthetic',
      'label': 'Asthetic With Nature',
      'link':
      'assets/images/asthetic.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Animals',
      'label': 'Animals in Jungle',
      'link':
      'assets/images/animals.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'City',
      'label': 'Modern City',
      'link':
      'assets/images/city.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Travel',
      'label': 'Travel to grow',
      'link':
      'assets/images/travel.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Sky',
      'label': 'Sky with dreams',
      'link':
      'assets/images/sky.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Road',
      'label': 'Road with concrete',
      'link': 'assets/images/road.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    },
    {
      'title': 'Flowers',
      'label': 'Flowers with Nature',
      'link':'assets/images/flowers.jpg',
      'description':
      'Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart. Tranquil forest calms, sunshine warms the joyful heart.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Photo Gallery",
          style: TextStyle(fontFamily: 'Jersey15', fontSize: 30),
        ),
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
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Color(0XFF7ACA5E),
          ),
        ),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitView(data: data,);

        } else {
          return LandascapeView(data: data,);
        }
      })
    );
  }
}
