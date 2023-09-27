import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/background.dart';
import '../Lessons/goalsScreen.dart';

class GoalsScreen extends StatefulWidget {
  @override
  _GoalsScreenState createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
        // shadowColor: Color(0xffF0F0F0).withOpacity(.4),
        // backgroundColor: Color.fromARGB(206, 17, 17, 17),
        title: Text(
          'الأهـــداف',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w900,
              fontSize: 22,
              fontFamily: "Cairo"),
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatingBg5(),
          mainCardWidget(context),
        ],
      ),
    );
  }
}

Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage('assets/icons/lesson2.jpg', 'أهداف الدرس الأول ', context),
      cardWithInfoPage(
          'assets/icons/Enzymes .jpg', 'أهداف الدرس الثاني ', context),
      cardWithInfoPage('assets/icons/RNAA.jpg', 'أهداف الدرس الثالث ', context),
      cardWithInfoPage(
          'assets/icons/Bacteria.jpg', 'أهداف الدرس الرابع ', context),
      SizedBox(
        height: MediaQuery.of(context).size.width / 7,
      ),
    ],
  );
}

Widget cardWithInfoPage(image, String name, BuildContext context) {
  return cardWidget(
    context,
    infoPage(name, context),
    name,
    image, // use AssetImage widget
  );
}

Widget cardWidget(
    BuildContext context, Widget route, String name, String image) {
  double _w = MediaQuery.of(context).size.width;
  double _f = MediaQuery.of(context).textScaleFactor;

  return InkWell(
      enableFeedback: true,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        HapticFeedback.lightImpact();
        if (name == 'أهداف الدرس الأول ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GoalsinfScreen(
                      currentPageIdx: 0,
                    )),
          );
        } else if (name == 'أهداف الدرس الثاني ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GoalsinfScreen(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'أهداف الدرس الثالث ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GoalsinfScreen(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == 'أهداف الدرس الرابع ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GoalsinfScreen(
                      currentPageIdx: 3,
                    )),
          );
        }
      },
      child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 7, 29),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(.04),
                  blurRadius: 30),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
          height: _w / 5,
          padding: EdgeInsets.all(_w / 25),
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: _w / 5.5,
                    width: _w / 3.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0),
                      color: Colors.black.withOpacity(.2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 30),
                      ],
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      width: _w / 2.0,
                      // color: Colors.black,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  name,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: _f * 20,
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.start,
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                          ])),
                ]),
          )));
}

Widget infoPage(String name, BuildContext context) {
  double _f = MediaQuery.of(context).textScaleFactor;
  return Scaffold(
    backgroundColor: Color(0xffF8F9FB),
    appBar: AppBar(
      leading: IconButton(
        tooltip: 'Back',
        icon: Icon(
          CupertinoIcons.chevron_back,
          color: Colors.black,
        ),
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.maybePop(context);
        },
      ),
      shadowColor: Color.fromARGB(255, 22, 4, 4).withOpacity(.4),
      elevation: 20,
      backgroundColor: Colors.white,
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: _f * 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
