import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../Alarms/alarmScreen.dart';
import '../featuerd_screen.dart';

DateTime scheduleTime = DateTime.now();

class BaseScreen extends StatefulWidget {
  final String namee;
  const BaseScreen({Key? key, required this.namee}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [];
   @override
  void initState() {
    super.initState();
    _widgetOptions = [
      FeaturedScreen(
        name: widget.namee,
      ),
      AlarmScreen(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                title: Text(
                  "الـرئـيـسـية",
                  style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
                ),
                selectedColor: Color.fromARGB(255, 0, 83, 238),
                unselectedColor: Colors.white
                // .fromARGB(255, 42, 6, 202),
                ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(
                Icons.alarm_add,
                size: 20,
              ),
              title: Text(
                "الـتـكـرار",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: Colors.amber,
            ),
          ],
        ));
  }
}
