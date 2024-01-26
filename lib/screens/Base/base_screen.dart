// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:education_app/constants/color.dart';
import 'package:education_app/screens/chat/views/chat_view.dart';
import 'package:education_app/screens/notes/note_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../profile/views/profile_view.dart';
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
      FeaturedScreen(),
      ChatView(),
      NotesView(),
      ProfileView(),
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
                CupertinoIcons.home,
                size: 20,
              ),
              title: Text(
                "الـرئـيـسـية",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: cPrimary,
              unselectedColor: cLight),
          SalomonBottomBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble_2,
                size: 20,
              ),
              title: Text(
                "الدردشة",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: cPrimary,
              unselectedColor: cLight),
          SalomonBottomBarItem(
              icon: Icon(
                             CupertinoIcons.pencil_ellipsis_rectangle,

                size: 20,
              ),
              title: Text(
                "الملاحظات",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: cPrimary,
              unselectedColor: cLight),
          SalomonBottomBarItem(
              icon: Icon(
             CupertinoIcons.person_fill,
                size: 20,
              ),
              title: Text(
                "الملف الشخصي",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: cPrimary,
              unselectedColor: cLight),
        ],
      ),
    );
  }
}
