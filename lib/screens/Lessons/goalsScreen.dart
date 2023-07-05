// ignore_for_file: unused_import, duplicate_import, unnecessary_import

import 'package:flutter/material.dart';

import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'dart:ui';
import 'package:animations/animations.dart';
import '../../widgets/background.dart';

class GoalsinfScreen extends StatefulWidget {
  final int currentPageIdx;
  GoalsinfScreen({required this.currentPageIdx});

  @override
  _GoalsinfScreenState createState() => _GoalsinfScreenState();
  // int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType = SharedAxisTransitionType.vertical;
}

class _GoalsinfScreenState extends State<GoalsinfScreen> {
  int _currentPageIdx = 0;
  SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;

  @override
  void initState() {
    super.initState();
    _currentPageIdx = widget.currentPageIdx;
  }

  final _pages = <Widget>[
    // Note: when changed child is of the same type as previous one, set the
    // key property explicitly.

    // key: ValueKey(1),

    SingleChildScrollView(
      key: ValueKey(1),
      child: Container(
          color: Color.fromARGB(255, 1, 19, 31),
          child: Stack(
            children: [
              AnimatingBg2(),
              Column(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'أهداف الدرس الأول ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "-	تلخص التجارب التي ادت الي استكشاف DNA  بوصفه مادة الوراثة.",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      "-	ترسم وتعنون التركيب الاساسي لجزئ DNA.",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      "-	تصف التركيب الأساسي للكروموسوم في المخلوقات الحية حقيقية النوي.",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          )),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(2),
          color: Color.fromARGB(255, 1, 19, 31),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'أهداف الدرس الثاني ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Text(
                  "-	تلخص دور الانزيمات في تضاعف DNA.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Text(
                  "-	تفسّر كيف يتم بناء السلسلة الرئيسية والسلسلة الثانوية بصورة مختلفة كل منهما عن الأخري.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ])),
    ),
    SingleChildScrollView(
      key: ValueKey(3),
      child: Container(
          color: Color.fromARGB(255, 1, 19, 31),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'أهداف الدرس الثالث ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تفسّر كيف يشارك DNA  الرسول و DNA  الرايبوسومي و DNA  الناقل في نسخ الجينات وترجمتها.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تلخص دور انزيم بلمرة RNA  في بناء RNA  الرسول.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تصف كيف يتم نسخ شفرة DNA  الي RNA  الرسول واستخدامها في بناء بروتين معين.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ])),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(4),
          color: Color.fromARGB(255, 1, 19, 31),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'أهداف الدرس الرابع ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تصف كيف يمكن للبكتيريا أن تنظم جيناتها.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تناقش كيف تُنظم الخلايا الحقيقية النوي عملية نسخ الجين.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تلخص الأنواع المختلفة من الطفرات.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تصف كيف تساعد الهندسة الوراثية علي التحكم في DNA.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تفسر كيف تستعمل المعلومات من الجينوم البشري في تحسين حياة الانسان. ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "-	تلخص استعمال الهندسة الوراثية في تحسين حياة الانسان.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ])),
    ),
  ];

  // int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType =
  //     SharedAxisTransitionType.horizontal;

  @override
  Widget build(BuildContext context) {
    // _currentPageIdx = widget.currentPageIdx;

    return Scaffold(
      appBar: AppBar(
        elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
        title: Text(
          'GOALS',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 1, 20, 32),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageTransitionSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) =>
                        SharedAxisTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: this._transitionType,
                  child: child,
                ),
                child: _pages[_currentPageIdx],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: this._currentPageIdx == 0
                        ? null
                        : () => setState(() => this._currentPageIdx--),
                    child: const Text('الـسـابـق',
                        style: TextStyle(fontFamily: "Cairo")),
                  ),
                  ElevatedButton(
                    onPressed: this._currentPageIdx == 3
                        ? null
                        : () => setState(() => this._currentPageIdx++),
                    child: const Text(
                      'الـتـالـي',
                      style: TextStyle(fontFamily: "Cairo"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildControlBar(),
    );
  }

  Widget _buildControlBar() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 0, 7, 29),
        Color.fromARGB(255, 1, 15, 61),
        Color.fromARGB(251, 4, 37, 129),
      ])),
      //  Theme.of(context).primaryColorLight
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text(
              'Transition Type',
              style: TextStyle(color: Colors.white),
            ),
            trailing: DropdownButton<SharedAxisTransitionType>(
              value: _transitionType,
              items: [
                for (final val in SharedAxisTransitionType.values)
                  DropdownMenuItem(
                    value: val,
                    child: Text(
                      val
                          .toString()
                          .substring('SharedAxisTransitionType.'.length),
                      style: TextStyle(color: Colors.black87),
                    ),
                  )
              ],
              onChanged: (SharedAxisTransitionType? val) {
                if (val != null) setState(() => this._transitionType = val);
              },
            ),
          ),
        ],
      ),
    );
  }
}
