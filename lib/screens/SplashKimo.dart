import 'dart:async';
import 'package:education_app/screens/base_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'noti.dart';
DateTime scheduleTime = DateTime.now();

// Kimo
class SplashKimo extends StatefulWidget {
  @override
  _SplashKimoState createState() => _SplashKimoState();
}
// Kimo

class _SplashKimoState extends State<SplashKimo> with TickerProviderStateMixin {
   
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;
// Kimo

  late AnimationController _controller;

  late Animation<double> animation1;
// Kimo
// @override
//   void initState2(){
//     super.initState();
//     Noti.initialize(flutterLocalNotificationsPlugin);
//   }
 
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 13));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });
// Kimo

    _controller.forward();
// Kimo

    Timer(Duration(seconds: 2), () {
      setState(() {
        _fontSize = 1.06;
      });
    });
// Kimo

    Timer(Duration(seconds: 2), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration(seconds: 4), () {
      setState(() {
        Navigator.pushReplacement(context, PageTransition(BaseScreen()));
      });
    });
  }
// Kimo

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
// Kimo

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

// Kimo
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: _height / _fontSize),
              AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: _textOpacity,
                child: Text(
                  'MOLECULAR GENETICS',

// Kimo

                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 2000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: _containerOpacity,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 2000),
                curve: Curves.fastLinearToSlowEaseIn,
                height: _width / _containerSize,
                width: _width / _containerSize,
                alignment: Alignment.center,
// Kimo

                child: Image.asset('assets/icons/Spalsh.gif'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Kimo

class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 100),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                child: page,
                axisAlignment: 0,
              ),
            );
          },
        );
}
