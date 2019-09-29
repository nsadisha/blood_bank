import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:blood_bank/CusIcons.dart';

import 'homePage.dart';
import 'notifications.dart';
import 'account.dart';
import 'settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  //Navigation bar pages
  final List<Widget> _children = [
    HomePage(),
    Notifications(),
    Account(),
    Settings(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.red,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 0,
          elevation: 3,
          iconSize: 30,
          onTap: onTabTapped,
          currentIndex: _currentIndex, // new
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell),
              title: Text('Notifications'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              title: Text('Account'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              title: Text('Settings'),
            ),
          ],
      )
    );
  }
}