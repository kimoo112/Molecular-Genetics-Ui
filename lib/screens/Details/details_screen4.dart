import 'package:education_app/screens/Details/goals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../constants/color.dart';
import '../../constants/size.dart';
import '../../widgets/background.dart';
import '../Lessons/lessonScreen4.dart';

class DetailsScreen4 extends StatefulWidget {
  @override
  _DetailsScreen4State createState() => _DetailsScreen4State();
}

class _DetailsScreen4State extends State<DetailsScreen4> {
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
          'التنظيم الجيني والطفرة ',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              fontFamily: "Almarai"),
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

Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage('assets/icons/R.jfif', 'الأهداف', context),
      cardWithInfoPage('assets/icons/youtube.jfif', 'شرح فيديو', context),
      cardWithInfoPage(
        'assets/icons/bold1 ls4.webp',
        'التنظيم الجيني في الخلايا',
        context,
      ),
      cardWithInfoPage(
        'assets/icons/bold1 ls4.webp',
        'التنظيم الجيني في الخلايا 2',
        context,
      ),
      cardWithInfoPage(
          'assets/icons/bold 2 ls4.jpg', 'التحكم في عملية النسخ', context),
      cardWithInfoPage('assets/icons/bold 3 ls4.jpg', 'تداخل RNA', context),
      cardWithInfoPage('assets/icons/muation.jfif', 'الطفرات', context),
      cardWithInfoPage('assets/icons/muationn.jfif', 'أنواع الطفرات', context),
      cardWithInfoPage('assets/icons/bold 6 ls4.jpg', 'أسباب الطفرات', context),
      cardWithInfoPage('assets/icons/Tafra.jfif', 'طفرة الخلايا', context),
      cardWithInfoPage(
          'assets/icons/bold 7 ls4.jpg', 'الهندسه الوراثية', context),
      cardWithInfoPage(
          'assets/icons/bold 8 ls4.jfif', 'الحيوانات المعدلة وراثيا', context),
      cardWithInfoPage(
          'assets/icons/bold 9 ls4.jpg', 'النباتات المعدلة وراثيًّا', context),
      cardWithInfoPage('assets/icons/bold 10 ls4.jpg',
          'البكتيريا المعدّلة وراثيًّا', context),
      cardWithInfoPage(
          'assets/icons/bold 11 ls4.jpg', 'الجينوم البشري', context),
      cardWithInfoPage(
          'assets/icons/bold 11 ls4.jpg', 'القواعد النيتروجينية', context),
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
      builder: (context) => LessonScreen4(currentPageIdx: currentPageIdx),
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
        switch (name) {
          case 'شرح فيديو':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 1),
              ),
            );
            break;
          case 'الأهداف':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 0),
              ),
            );
            break;
          case 'التنظيم الجيني في الخلايا':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 2),
              ),
            );
            break;
          case 'التنظيم الجيني في الخلايا 2':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 3),
              ),
            );
            break;
          case 'التحكم في عملية النسخ':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 4),
              ),
            );
            break;
          case 'تداخل RNA':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 5),
              ),
            );
            break;
          case 'الطفرات':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 6),
              ),
            );
            break;
          case 'أنواع الطفرات':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 7),
              ),
            );
            break;
          case 'أسباب الطفرات':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 8),
              ),
            );
            break;
          case 'طفرة الخلايا':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 9),
              ),
            );
            break;
          case 'الهندسه الوراثية':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 10),
              ),
            );
            break;
          case 'الحيوانات المعدلة وراثيا':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 11),
              ),
            );
            break;
          case 'النباتات المعدلة وراثيًّا':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 12),
              ),
            );
            break;
          case 'البكتيريا المعدّلة وراثيًّا':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 13),
              ),
            );
            break;
          case 'الجينوم البشري':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 14),
              ),
            );
          case 'القواعد النيتروجينية':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen4(currentPageIdx: 15),
              ),
            );
            break;
          default:
            break;
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
