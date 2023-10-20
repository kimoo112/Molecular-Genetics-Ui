import 'package:education_app/screens/Details/goals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../constants/color.dart';
import '../../constants/size.dart';
import '../../widgets/background.dart';
import '../Lessons/lessonScreen3.dart';

class DetailsScreen3 extends StatefulWidget {
  @override
  _DetailsScreen3State createState() => _DetailsScreen3State();
}

class _DetailsScreen3State extends State<DetailsScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffF8F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 3,
        shadowColor: cDark.withOpacity(.8),
        title: Text(
          'DNA , RNA , Protein ',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              fontFamily: "Poppins"),
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatingBg2(),
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
      cardWithInfoPage('assets/icons/R.jfif', 'الأهداف', context),
      cardWithInfoPage('assets/icons/youtube.jfif', 'شرح فيديو', context),
      cardWithInfoPage(
        'assets/icons/bold 1 ls 2.jpg',
        'المبدأ الأساسي',
        context,
      ),
      cardWithInfoPage('assets/icons/bold 2 ls 2.jfif', 'جزيء RNA', context),
      cardWithInfoPage('assets/icons/bold 2 ls 2.jfif', ' 2 RNA ', context),
      cardWithInfoPage('assets/icons/bold 3 ls 2.jfif', 'عملية النسخ', context),
      cardWithInfoPage(
          'assets/icons/bold 3 ls 2.jfif', 'عملية النسخ 2 ', context),
      cardWithInfoPage('assets/icons/rna.png', 'معالجة RNA', context),
      cardWithInfoPage('assets/icons/rna.png', ' معالجة 2', context),
      cardWithInfoPage('assets/icons/bold 5 ls 2.jfif', 'الشفرة', context),
      cardWithInfoPage('assets/icons/bold 5 ls 2.jfif', 'الشفرة 2', context),
      cardWithInfoPage('assets/icons/bold 5 ls 2.jfif', 'الشفرة 3', context),
      cardWithInfoPage('assets/icons/bold 5 ls 2.jfif', 'الشفرة 4', context),
      cardWithInfoPage('assets/icons/bold 6 ls 2.webp', 'الترجمة', context),
      cardWithInfoPage('assets/icons/bold 6 ls 2.webp', 'الترجمة 2', context),
      cardWithInfoPage('assets/icons/ribosomee.png', 'دور الرايبوسوم', context),
      cardWithInfoPage('assets/icons/ribosomee.png', 'الرايبوسوم 2', context),
      cardWithInfoPage('assets/icons/ribosomee.png', 'الرايبوسوم 3', context),
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
      builder: (context) => LessonScreen3(currentPageIdx: currentPageIdx),
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
  // double _f = MediaQuery.of(context).textScaleFactor;

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
        } else if (name == 'المبدأ الأساسي') {
          navigateToLessonScreen(context, 2);
        } else if (name == 'جزيء RNA') {
          navigateToLessonScreen(context, 3);
        } else if (name == ' 2 RNA ') {
          navigateToLessonScreen(context, 4);
        } else if (name == 'عملية النسخ') {
          navigateToLessonScreen(context, 5);
        } else if (name == 'عملية النسخ 2 ') {
          navigateToLessonScreen(context, 6);
        } else if (name == 'معالجة RNA') {
          navigateToLessonScreen(context, 7);
        } else if (name == ' معالجة 2') {
          navigateToLessonScreen(context, 8);
        } else if (name == 'الشفرة') {
          navigateToLessonScreen(context, 9);
        } else if (name == 'الشفرة 2') {
          navigateToLessonScreen(context, 10);
        } else if (name == 'الشفرة 3') {
          navigateToLessonScreen(context, 11);
        } else if (name == 'الشفرة 4') {
          navigateToLessonScreen(context, 12);
        } else if (name == 'الترجمة') {
          navigateToLessonScreen(context, 13);
        } else if (name == 'الترجمة 2') {
          navigateToLessonScreen(context, 14);
        } else if (name == 'دور الرايبوسوم') {
          navigateToLessonScreen(context, 15);
        } else if (name == 'الرايبوسوم 2') {
          navigateToLessonScreen(context, 16);
        } else if (name == 'الرايبوسوم 3') {
          navigateToLessonScreen(context, 17);
        }
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
        child: AnimationConfiguration.staggeredList(
          position: 3,
          delay: Duration(milliseconds: 100),
          child: SlideAnimation(
            duration: Duration(milliseconds: 2500),
            curve: Curves.bounceOut,
            verticalOffset: -250,
            child: ScaleAnimation(
              duration: Duration(milliseconds: 1500),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Container(
                margin: EdgeInsets.only(bottom: _w / 20),
                height: _w / 4,
                decoration: BoxDecoration(
                  color: Color(0xFF031235).withOpacity(.93),
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
                              color: Colors.white.withOpacity(0.3),
                              blurRadius: 3,
                              spreadRadius: 1,
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
                            color: cLight,
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
