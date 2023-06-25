

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../../widgets/background.dart';
import '../Alarms/alarm3.dart';
import '../Lessons/lessonScreen3.dart';

class DetailsScreen3 extends StatefulWidget {
  @override
  _DetailsScreen3State createState() => _DetailsScreen3State();
}

class _DetailsScreen3State extends State<DetailsScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      appBar: NewGradientAppBar(
        // brightness: Brightness.light,
        elevation: 20,
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 3, 18, 53),
          Color.fromARGB(255, 17, 35, 77),
        ]),

        // shadowColor: Color(0xffF0F0F0).withOpacity(.4),
        // backgroundColor: Color.fromARGB(206, 17, 17, 17),
        title: Text(
          'DNA , RNA , Protein ',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w600,
              fontSize: 22,
              fontFamily: "Cairo"),
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,

        actions: [
          IconButton(
            color: Colors.black.withOpacity(.7),
            tooltip: ' الـتـكـرار',
            enableFeedback: true,
            icon: Icon(
              Icons.alarm_add,
              size: 30,
              color: Colors.white.withOpacity(.7),
            ),
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Alarmscreen3()));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          AnimatingBg3(),
          mainCardWidget(context),
        ],
      ),
    );
  }
}

// int _currentPageIdx = 0;
// SharedAxisTransitionType _transitionType = SharedAxisTransitionType.vertical;
Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage(
        'assets/icons/bold 1 ls 2.jpg',
        'المبدأ الأساسي',
        context,
      ),
      cardWithInfoPage('assets/icons/bold 2 ls 2.jfif', 'جزيء RNA', context),
      cardWithInfoPage('assets/icons/bold 3 ls 2.jfif', 'عملية النسخ', context),
      cardWithInfoPage('assets/icons/bold 4 ls 2.jpg', 'معالجة RNA', context),
      cardWithInfoPage('assets/icons/bold 5 ls 2.jfif', 'الشفرة', context),
      cardWithInfoPage('assets/icons/bold 6 ls 2.webp', 'الترجمة', context),
      cardWithInfoPage('assets/icons/riposm.jpg', 'دور الرايبوسوم', context),
      cardWithInfoPage('assets/icons/riposm.jpg', 'الرايبوسوم 2', context),
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
        if (name == 'المبدأ الأساسي') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonScreen3(
                currentPageIdx: 0,
              ),
            ),
          );
        } else if (name == 'جزيء RNA') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'عملية النسخ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == 'معالجة RNA') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 3,
                    )),
          );
        } else if (name == 'الشفرة') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 4,
                    )),
          );
        } else if (name == 'الترجمة') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 5,
                    )),
          );
        } 
        else if (name == 'الرايبوسوم 2') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 7,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 6,
                    )),
          );
        }
      },
      child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 3, 18, 53),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.04), blurRadius: 30),
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Align(
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
                                    color:
                                                 Colors.white,

                                  ),
                                  textAlign: TextAlign.start,
                                  textDirection: TextDirection.rtl,
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
      actions: [
        IconButton(
          color: (Colors.white),
          tooltip: 'Add Alarm',
          enableFeedback: true,
          icon: Icon(Icons.alarm_add),
          onPressed: () {
            HapticFeedback.lightImpact();
          },
        ),
      ],
    ),
  );
}

