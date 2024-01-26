import 'package:education_app/Lesson2/Slide6.dart';
import 'package:education_app/Lesson2/videoSlide.dart';
import 'package:education_app/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../Lesson2/Slide1.dart';
import '../../Lesson2/Slide2.dart';
import '../../Lesson2/Slide3.dart';
import '../../Lesson2/Slide4.dart';
import '../../Lesson2/Slide5.dart';
import '../../Lesson2/goals.dart';

class LessonScreen2 extends StatelessWidget {
  void URL(link) async {
    final facebookUrl = link;

    if (await canLaunchUrlString(facebookUrl)) {
      await launchUrlString(facebookUrl);
    } else {
      throw 'Could not launch Facebook';
    }
  }

  final int currentPageIdx;
  const LessonScreen2({
    Key? key,
    required this.currentPageIdx,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: cTransperet,
        title: Text(
          'LESSON 2',
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              URL('https://drive.google.com/file/d/1ClNm9eTqx_VItEP-pTCzlPq_EL-t1M58/view');
            },
            icon: const Icon(CupertinoIcons.play_circle),
          ),
        ],
      ),
      body: SlidePage(
        kimo: currentPageIdx,
      ),
    );
  }
}

class SlidePage extends StatefulWidget {
  int kimo;
  SlidePage({
    Key? key,
    required this.kimo,
  }) : super(key: key);

  @override
  State<SlidePage> createState() => _SlidePageState();
  void launchUrl(String link) async {
    if (await canLaunchUrlString(link)) {
      await launchUrlString(link);
    } else {
      throw 'Could not launch URL';
    }
  }
}

class _SlidePageState extends State<SlidePage> {
  TextStyle myTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: "Cairo",
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final List<Widget> slides = [
    GoalsSlide(),
    VideoSlide(),
    Slide1(),
    Slide2(),
    Slide3(),
    Slide4(),
    Slide5(),
    Slide6(),
  ];

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.kimo);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            controller: pageController,
            children: slides,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: TextButton(
                  child: Text(
                    'السابق',
                    style: const TextStyle(
                        color: cLight, fontSize: 18, fontFamily: "Cairo"),
                  ),
                  onPressed: () {
                    pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'الصفحه الرئيسيه',
                  style: const TextStyle(
                      color: cLight, fontSize: 18, fontFamily: "Cairo"),
                ),
              ),
              TextButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'التالي',
                  style: const TextStyle(
                      color: cLight, fontSize: 18, fontFamily: "Cairo"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
