// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../Alarms/alarmScreen.dart';
import '../Featured/featuerd_screen.dart';

DateTime scheduleTime = DateTime.now();

class BaseScreen extends StatefulWidget {
  final int indx;
  BaseScreen({
    Key? key,
    this.indx = 0,
  }) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  late int _selectedIndex = widget.indx;
  List<Widget> _widgetOptions = [];
  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      FeaturedScreen(
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
