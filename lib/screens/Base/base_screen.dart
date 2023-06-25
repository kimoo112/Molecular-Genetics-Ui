import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../Alarms/alarmScreen.dart';
import '../featuerd_screen.dart';


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
    AlarmScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: 
     SalomonBottomBar(
onTap: (i) => setState(() => _selectedIndex = i),
  items: [

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