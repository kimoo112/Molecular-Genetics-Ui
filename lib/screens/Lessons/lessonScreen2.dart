// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import, must_be_immutable, unused_label, unused_local_variable, deprecated_member_use
import 'package:education_app/Lesson2/Slide6.dart';
import 'package:education_app/Lesson2/videoSlide.dart';
import 'package:education_app/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Lesson2/Slide1.dart';
import '../../Lesson2/Slide2.dart';
import '../../Lesson2/Slide3.dart';
import '../../Lesson2/Slide4.dart';
import '../../Lesson2/Slide5.dart';
import '../../Lesson2/goals.dart';
import '../../widgets/image_network.dart';

class LessonScreen2 extends StatelessWidget {
  void URL(link) async {
    final facebookUrl = link;

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
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
              tooltip:
              'Youtube Video';
              enableFeedback:
              true;

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
    if (await canLaunch(link)) {
      await launch(link);
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
    LiquidController controller = LiquidController();
  }

  @override
  void dispose() {
    LiquidController controller = LiquidController();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // LiquidSwipe(
        //   pages: slides,
        //   initialPage: widget.kimo ,
        //   liquidController: LiquidController(),
        //   slideIconWidget: Icon(CupertinoIcons.airplane),
        //   enableLoop: false,
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
