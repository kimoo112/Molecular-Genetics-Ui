// ignore_for_file: duplicate_import, unused_import

import 'package:education_app/constants/navigate.dart';
import 'package:education_app/screens/Details/goals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../constants/color.dart';
import '../../constants/size.dart';
import '../../models/lesson.dart';
import '../../widgets/background.dart';
import '../Alarms/alarm1.dart';
import '../Lessons/lessonsScreen.dart';
import 'details_screen4.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 3,
        shadowColor: cDark.withOpacity(.8),
        title: Text(
          'المادة الوراثية',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: "Almarai"),
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        
      ),
      body: Stack(
        children: [
          AnimatingBg4(),
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
      cardWithInfoPage('assets/icons/R.jfif', 'الأهداف', context),
      cardWithInfoPage('assets/icons/youtube.jfif', 'شرح فيديو', context),
      cardWithInfoPage(
          'assets/icons/bold 1 ls 1.jpg', 'اكتشاف المادة الوراثية', context),
      cardWithInfoPage(
          'assets/icons/bold 2 ls 1.jfif', 'العالم جريفيث', context),
      cardWithInfoPage('assets/icons/bold 2 ls 1.jfif', 'جريفيث 2', context),
      cardWithInfoPage('assets/icons/bold 2 ls 1.jfif', 'جريفيث 3', context),
      cardWithInfoPage('assets/icons/bold 3 ls 1.jpg', 'أفري Avery', context),
      cardWithInfoPage(
          'assets/icons/bold 4 ls 1.png', 'هيرشي  وتشيسي', context),
      cardWithInfoPage(
          'assets/icons/bold 5 ls 1.png', 'العلامات المشعة', context),
      cardWithInfoPage(
          'assets/icons/bold 6 ls 1.jfif', 'DNA Tracking', context),
                cardWithInfoPage(
          'assets/icons/bold 8 ls 1.jfif', 'النيوكليوتدات', context),
     
      cardWithInfoPage(
          'assets/icons/bold 9 ls 1.jfif', 'تشارجاف Chargaff', context),
            cardWithInfoPage(
          'assets/icons/bold 10 ls 1.jpg', 'ويلكنز Wilkins', context),
           cardWithInfoPage(
          'assets/icons/bold 11 ls 1.jpeg', 'واطسون وكريك', context),

      cardWithInfoPage('assets/icons/bold13ls1.jfif', 'تركيب DNA', context),
      cardWithInfoPage(
          'assets/icons/bold 12 ls 1.png', 'الاتجاه Orientation', context),
      SizedBox(
        height: MediaQuery.of(context).size.width / 7,
      ),
    ],
  );
}

void navigateToLessonScreen(BuildContext context, int currentPageIdx) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LessonScreen1(currentPageIdx: currentPageIdx),
    ),
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

  return InkWell(
      enableFeedback: true,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        HapticFeedback.lightImpact();
        if (name == 'شرح فيديو') {
          navigateToLessonScreen(context, 1);
        } else if (name == 'الأهداف') {
          navigateToLessonScreen(context, 0);
        } else if (name == 'اكتشاف المادة الوراثية') {
          navigateToLessonScreen(context, 2);
        } else if (name == 'العالم جريفيث') {
          navigateToLessonScreen(context, 3);
        } else if (name == 'جريفيث 2') {
          navigateToLessonScreen(context, 4);
        } else if (name == 'جريفيث 3') {
          navigateToLessonScreen(context, 5);
        } else if (name == 'أفري Avery') {
          navigateToLessonScreen(context, 6);
        } else if (name == 'هيرشي  وتشيسي') {
          navigateToLessonScreen(context, 7);
        } else if (name == 'العلامات المشعة') {
          navigateToLessonScreen(context, 8);
        } else if (name == 'DNA Tracking') {
          navigateToLessonScreen(context, 9);
        } else if (name == 'النيوكليوتدات') {
          navigateToLessonScreen(context, 10);

        } else if (name == 'تشارجاف Chargaff') {
          navigateToLessonScreen(context, 11);
        } else if (name == 'ويلكنز Wilkins') {
          navigateToLessonScreen(context, 12);
        } else if (name == 'واطسون وكريك') {
          navigateToLessonScreen(context, 13);
        } else if (name == 'تركيب DNA') {
          navigateToLessonScreen(context, 14);
        } else if (name == 'الاتجاه Orientation') {
          navigateToLessonScreen(context, 15);
        } else
          () {
            navigateToLessonScreen(context, 1);
          };
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
        child: AnimationConfiguration.staggeredList(
          position: 3,
          delay: Duration(milliseconds: 70),
          child: SlideAnimation(
            duration: Duration(milliseconds: 1500),
            curve: Curves.easeInBack,
            verticalOffset: 250,
            child: ScaleAnimation(
              duration: Duration(milliseconds: 1500),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Container(
                margin: EdgeInsets.only(bottom: _w / 20),
                height: _w / 4,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.93),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 11,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Image.asset(
                            image,
                            width: 100.w,
                            fit: BoxFit.fill,
                            height: 100.h,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        name,
                        style: TextStyle(
                            color: cDark,
                            fontFamily: "Cairo",
                            fontSize: KWidth(context) * .043),
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ));
}
