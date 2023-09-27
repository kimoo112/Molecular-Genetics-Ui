import 'dart:async';

import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';

class AnimatingBg1 extends StatefulWidget {
  @override
  _AnimatingBg1State createState() => _AnimatingBg1State();
}

class _AnimatingBg1State extends State<AnimatingBg1>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color(0xff171B70),
    Color(0xff410D75),
    Color(0xff032340),
    Color(0xff050340),
    Color(0xff2C0340),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xff092646);
  Color topColor = Color(0xff050340);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg2 extends StatefulWidget {
  @override
  _AnimatingBg2State createState() => _AnimatingBg2State();
}

class _AnimatingBg2State extends State<AnimatingBg2>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color(0xF5EAD53),
    Color(0xFF03536E),
    Color(0xFF020257),
    Color(0xFF55036E),
    Color(0xFFAD9C9C),
   
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xff03696E);
  Color topColor = Color(0xff410D75);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg3 extends StatefulWidget {
  @override
  _AnimatingBg3State createState() => _AnimatingBg3State();
}

class _AnimatingBg3State extends State<AnimatingBg3>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color.fromARGB(255, 222, 222, 223),
    Color.fromARGB(255, 171, 170, 175),
    Color.fromARGB(255, 156, 160, 175),
    Color.fromARGB(255, 14, 2, 73),
    Color.fromARGB(255, 114, 114, 116),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xff092646);
  Color topColor = Color.fromARGB(255, 222, 222, 223);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg4 extends StatefulWidget {
  @override
  _AnimatingBg4State createState() => _AnimatingBg4State();
}

class _AnimatingBg4State extends State<AnimatingBg4>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    cNavy,
    cCoral,
    Color.fromARGB(255, 90, 79, 134),
    Color.fromARGB(255, 39, 24, 110),
    Color.fromARGB(255, 102, 103, 112),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = cCoral;
  Color topColor = Color(0xFF02022C);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg5 extends StatefulWidget {
  @override
  _AnimatingBg5State createState() => _AnimatingBg5State();
}

class _AnimatingBg5State extends State<AnimatingBg5>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    cNavy,
  cNavy2,
  cYellow,
    Color.fromARGB(251, 4, 37, 129),
    Color.fromARGB(255, 74, 59, 151),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color.fromARGB(255, 45, 62, 88);
  Color topColor = Color.fromARGB(255, 2, 2, 44);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}
