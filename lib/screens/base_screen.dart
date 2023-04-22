import 'package:education_app/screens/featuerd_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'dart:ui';

import 'alarm.dart';
import 'alarmScreen.dart';


DateTime scheduleTime = DateTime.now();

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: 
     SalomonBottomBar(
  onTap: (index) {
    if (index == 1) { // Check if the second item is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AlarmScreen()),
      );
    }
  },
  items: [
    /// Home
    SalomonBottomBarItem(
      icon: Icon(Icons.home,size: 20,),
      title: Text("الـرئـيـسـية",style: TextStyle(fontSize: 11,fontFamily: "Cairo"),),
      selectedColor: Color.fromARGB(255, 0, 83, 238)
      // .fromARGB(255, 42, 6, 202),
    ),

    /// Likes
    SalomonBottomBarItem(
      icon: Icon(Icons.alarm_add,size: 20,),
      title: Text("الـتـكـرار",style: TextStyle(fontSize: 11,fontFamily: "Cairo"),),
      selectedColor: Color.fromARGB(255, 0, 83, 238),
     
       
        
      
    ),
  ],
  )
);
  }
}

          /// Search
          // SalomonBottomBarItem(
          //   icon: Icon(Icons.search),
          //   title: Text("Search"),
          //   selectedColor: Colors.blueAccent,
          // ),

          // /// Profile
          // SalomonBottomBarItem(
          //   icon: Icon(Icons.person),
          //   title: Text("Profile"),
          //   selectedColor: Colors.teal,
          // ),