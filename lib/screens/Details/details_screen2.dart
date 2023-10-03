// ignore_for_file: unused_field

import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../widgets/background.dart';
import '../Lessons/lessonScreen2.dart';
import 'details_screen.dart';
import 'goals.dart';

class DetailsScreen2 extends StatefulWidget {
  @override
  _DetailsScreen2State createState() => _DetailsScreen2State();
}

class _DetailsScreen2State extends State<DetailsScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 3,
        shadowColor: cDark.withOpacity(.8),
        title: Text(
          'تضاعف DNA',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: cLight,
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
        'assets/icons/bold 1 ls 3.png',
        'تضاعف شبه المحافظ',
        context,
      ),
      cardWithInfoPage(
        'assets/icons/lesson22.jfif',
        'فك الالتواء',
        context,
      ),
      cardWithInfoPage(
        'assets/icons/lesson22.jfif',
        '2 فك الالتواء',
        context,
      ),
      cardWithInfoPage('assets/icons/bold 3 ls 3.png',
          '1 ارتباط القواعــد في أزواج', context),
      cardWithInfoPage('assets/icons/bold 3 ls 3.png',
          '2 ارتباط القواعــد في أزواج', context),
      cardWithInfoPage('assets/icons/bold 3 ls 3.png',
          '3 ارتباط القواعــد في أزواج', context),
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
    image,
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
        if (name == 'شرح فيديو') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'الأهداف') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 0,
                    )),
          );
        } else if (name == 'تضاعف شبه المحافظ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == "فك الالتواء") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 3,
                    )),
          );
        } else if (name == "2 فك الالتواء") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 4,
                    )),
          );
        } else if (name == '1 ارتباط القواعــد في أزواج') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 5,
                    )),
          );
        } else if (name == '2 ارتباط القواعــد في أزواج') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 6,
                    )),
          );
        } else if (name == '3 ارتباط القواعــد في أزواج') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 7,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsScreen()),
          );
        }
      },
      child: ContainerImage(
        w: _w,
        f: _f,
        image: image,
        name: name,
      ));
}

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    super.key,
    required double w,
    required double f,
    required this.name,
    required this.image,
  })  : _w = w,
        _f = f;
  final String name;
  final String image;
  final double _w;
  final double _f;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
