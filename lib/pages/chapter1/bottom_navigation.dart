/*
 * File: bottom_navigation.dart
 * -----
 * Description: 第01节: 底部导航栏制作-1
 * -----
 * Created  By: Aim 2020-04-22 15:34:16
 * Modified By: Aim 2020-04-22 15:56:35
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/chapter1/airplay_screen.dart';
import 'package:flutter_examples/pages/chapter1/email_screen.dart';
import 'package:flutter_examples/pages/chapter1/home_screen.dart';
import 'package:flutter_examples/pages/chapter1/pages_screen.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> list = [
    HomeScreen(),
    EmailScreen(),
    PagesScreen(),
    AirplayScreen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text('Email'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text('Pages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            title: Text('Airplay'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
