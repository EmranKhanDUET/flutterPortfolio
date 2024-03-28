import 'package:flutter/material.dart';
import 'package:flutter_portfolio/fragments/AlarmFragment.dart';
import 'package:flutter_portfolio/fragments/CurrencyFragment.dart';
import 'package:flutter_portfolio/fragments/PersonFragment.dart';
import 'package:flutter_portfolio/fragments/RecycleFragment.dart';
import 'package:flutter_portfolio/fragments/SearchFragment.dart';
import 'package:flutter_portfolio/fragments/SettingFragment.dart';

import 'fragments/HomeFragment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.green,
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "HOME"),
              Tab(icon: Icon(Icons.person), text: "person"),
              Tab(icon: Icon(Icons.search), text: "search"),
              Tab(icon: Icon(Icons.alarm), text: "alarm"),
              Tab(icon: Icon(Icons.currency_exchange), text: "currency"),
              Tab(icon: Icon(Icons.cached), text: "Recycle"),
              Tab(icon: Icon(Icons.settings), text: "settings"),
            ],
          ),
        ),
        body: TabBarView(children: [
          HomeFragment(),
          PersonFragment(),
          SearchFragment(),
          AlarmFragment(),
          CurrencyFragment(),
          RecycleFragment(),
          SettingFragment(),


        ]),
      ),
    );
  }
}
