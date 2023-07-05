// ignore_for_file: duplicate_import, unused_import, unnecessary_import

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../constants/color.dart';
import '../../models/lesson.dart';
import '../../widgets/background.dart';
import '../Alarms/alarm4.dart';
import '../Lessons/lessonScreen4.dart';
import 'details_screen.dart';

class DetailsScreen4 extends StatefulWidget {
  @override
  _DetailsScreen4State createState() => _DetailsScreen4State();
}

class _DetailsScreen4State extends State<DetailsScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      appBar:AppBar(
        elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),

        // shadowColor: Color(0xffF0F0F0).withOpacity(.4),
        // backgroundColor: Color.fromARGB(206, 17, 17, 17),
        title: Text(
          'التنظيم الجيني والطفرة ',
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
                  MaterialPageRoute(builder: (context) => Alarmscreen4()));
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

Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage(
        'assets/icons/bold1 ls4.webp',
        'التنظيم الجيني في الخلايا ',
        context,
      ),
      cardWithInfoPage(
          'assets/icons/bold 2 ls4.jpg', 'التحكم في عملية النسخ', context),
      cardWithInfoPage('assets/icons/bold 3 ls4.jpg', 'تداخل RNA', context),
      cardWithInfoPage('assets/icons/bold 4 ls4.jpg', 'الطفرات', context),
      cardWithInfoPage('assets/icons/bold 5 ls4.png', 'أنواع الطفرات', context),
      cardWithInfoPage('assets/icons/bold 5 ls4.png', 'أنواع 2', context),
      cardWithInfoPage('assets/icons/bold 6 ls4.jpg', 'أسباب الطفرات', context),
      cardWithInfoPage('assets/icons/bold 6 ls4.jpg', 'أسباب 2', context),
      cardWithInfoPage(
          'assets/icons/Tafra.jfif', 'طفرة الخلايا الجسمية والجنسية', context),
      cardWithInfoPage(
          'assets/icons/bold 7 ls4.jpg', 'الهندسه الوراثيه', context),
      cardWithInfoPage(
          'assets/icons/bold 8 ls4.jfif', 'الحيوانات المعدلة وراثيا', context),
      cardWithInfoPage(
          'assets/icons/bold 9 ls4.jpg', 'النباتات المعدلة وراثيًّا', context),
      cardWithInfoPage('assets/icons/bold 10 ls4.jpg',
          'البكتيريا المعدّلة وراثيًّا', context),
      cardWithInfoPage(
          'assets/icons/bold 11 ls4.jpg', 'الجينوم البشري', context),
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
        if (name == 'التنظيم الجيني في الخلايا ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 0,
                    )),
          );
        } else if (name == 'التحكم في عملية النسخ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'تداخل RNA') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == 'الطفرات') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 3,
                    )),
          );
        } else if (name == 'أنواع الطفرات') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LessonScreen4(
                        currentPageIdx: 4,
                      )));
        } else if (name == 'أنواع 2') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 5,
                    )),
          );
        } else if (name == 'أسباب الطفرات') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 6,
                    )),
          );
        } else if (name == 'أسباب 2') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 7,
                    )),
          );
        } else if (name == 'طفرة الخلايا الجسمية والجنسية') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 8,
                    )),
          );
        } else if (name == 'الهندسه الوراثيه') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 9,
                    )),
          );
        } else if (name == 'الحيوانات المعدلة وراثيا') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 10,
                    )),
          );
        } else if (name == 'النباتات المعدلة وراثيًّا') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 11,
                    )),
          );
        } else if (name == 'البكتيريا المعدّلة وراثيًّا') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 12,
                    )),
          );
        } else if (name == 'الجينوم البشري') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen4(
                      currentPageIdx: 13,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsScreen()),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color: Colors.white,

                                  // color: Colors.black.withOpacity(.8),
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            // Text(
                            //   // 'Tap to know more'
                            //   "",
                            //   overflow: TextOverflow.ellipsis,
                            //   softWrap: true,
                            //   maxLines: 1,
                            //   style: TextStyle(
                            //     fontSize: _f * 14,
                            //     fontFamily: "Poppins",
                            //     fontWeight: FontWeight.w400,
                            //     color: Colors.black.withOpacity(.6),
                            //   ),
                            // ),
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
