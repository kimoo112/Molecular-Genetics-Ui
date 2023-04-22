import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'dart:ui';
import 'package:education_app/screens/details_screen4.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'dart:ui';
import 'package:animations/animations.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'background.dart';
class LessonScreen2 extends StatefulWidget {
  final int currentPageIdx;
  LessonScreen2({required this.currentPageIdx});

  @override
  _LessonScreen2State createState() => _LessonScreen2State();
  // int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType = SharedAxisTransitionType.vertical;
}

class _LessonScreen2State extends State<LessonScreen2> {
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
      
          color: Color.fromARGB(255, 5, 50, 80),
          child: Stack(
            children: [
              AnimatingBg2(),
              Column(
                children: [
                   Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'تضاعف DNA شبه المحافظ ',
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
                InstaImageViewer(
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/trkip.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'اقترح واطســون وكريك طريقــة محتملة لتضاعف جزيء DNA ،وهو ما يســمى عملية التضاعف شــبه المحافظ؛ حيــث تنفصل خالل التضاعف شــبه المحافظ  replication semiconservative سلاســل DNA الاصلية لتعمل بوصفها قوالب templates ،وتبدأ عملية التضاعف، فينتج جزيء DNA  مكون من سلســلة أصلية وأخرى جديدة. درست من قبل أن تضاعف DNA يحدث في الطور البيني لالنقسام المتســاوي أو المنصف. تتضمن عملية التضاعف شــبه المحافظ ثالث مراحل، هــي: فك الالتواء، وارتبــاط القواعد في أزواج، وإعادة ربط السلاسل، فكا الالتواء Unwinding يســمى اإلنزيم المســؤول عن فك االلتواء وفصل جزيء DNA الحلزوني المزدوج إنزيم فك االلتواء   هيليكيز helicase .',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
               
                  ]  
              ),
            ],
          )
      ),
    ),
      SingleChildScrollView(
        child: Container(
            key: ValueKey(2),
      
            color: Color.fromARGB(255, 5, 50, 80),
            child: Column(
              children: [ Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'وعندما تنفصل سلاسل الحلزون المزدوج تتكسر الروابط  الهيدروجينيــة بين القواعد، فتتكون سلاسل DNA منفردة.  ثم تقوم بروتينات تســمى البروتينات المرتبطة مع السالسل المنفردة، باالرتبــاط بجزيء DNA لضمان بقاء السلاسل منفصلــة بعضها عن بعــض خالل عمليــة التضاعف. وبعد ســمى إنزيم االنتهاء من فك التواء الحلزون يقوم إنزيم آخري RNA  البادئ   primase RNA   بإضافة قطعة صغيرة من RNA ، تسمى قطعة RNA الأولية، إلى كل سلسلة من سلسله DNA .',
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
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
               Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'ارتباط القواعــــد في أزواج  Base pairing ',
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
            InstaImageViewer(
              child: Container(
                width: 200,
                height: 200,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/Screenshot_112.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'يحفــز إنزيم بلمرة DNA polymeras DNA إضافة النيوكليوتيدات المناسبة إلى سلســلة DNA الجديدة. تضاف النيوكليوتيدات إلــى النهاية   الطــرف  3 في السلســلة الجديــدة، تذكر أن كل قاعدة نيتروجينية ترتبط بالقاعدة النيتروجينية المتممة لها فقط – مثــا القاعدة النيتروجينية A ترتبــط مع T ،و C ترتبط مع G .وهذه الطريقة تســمح بإنتاج نسخ متماثلة من جزيء DNA الحلزوني المزدوج الاصلي.  السلسلتين تصنعان بطريقتين مختلفتين  قليال  . فإحدهما تسمى السلسلة الرئيسة، ويزداد طولها عندما يتم فك الالتواء في اتجاه شــوكة التضاعف. ويتم إنتاج هذه السلسلة بإضافة النيوكليوتيدات بشكل متواصل إلى النهاية.',
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
                  'أما سلســلة DNA  األخرى فتسمى السلســلة الثانوية، ويزداد طولها في عكس  اتجاه شــوكة التضاعف. وتصنع هذه السلسلة بشكل غير متواصل، وفي صورة  قطع تســمى قطــع أوكازاكــيfragments okazaki ،باســتخدام إنزيم بلمرة DNA وفي االتجاه من 3 إلى 5 .  يتــم ربط هذه القطع الحقا بإنزيم ربط DNA  ligase . ويبلــغ طول كل قطعة من قطع أوكازاكي نحو 100 – 200 نيوكليوتيد  في المخلوقات الحية الحقيقية النوى. ولم  ا كانت إحدى السالسل تصنع بشكل ســمى شبه  متواصل واألخرى تصنع بشــكل غير متواصل فإن تضاعف DNA ي المتقطع، وكذلك شبه المحافظ.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
              ]  
          )
      ),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(4),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'اعادة ربط السلاسل  Joining ',
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
                padding: const EdgeInsets.all(10),
                child: Text(
                  'على الرغم من أن السلســلة الاصلية تصنع بشــكل متواصل فإن تضاعف DNA في الخاليا الحقيقية النــوى يبدأ عادة في عدة مناطق على طول الكروموسوم، وعندما يصل إنزيم بلمرة DNA إلى RNA البادئ فإنه يزيل البادئ ويســتبدل به نيوكليوتيــدات    DNA ثم يقوم إنزيم ربط DNA بربط الجزأين.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
              ]  
          )
      ),
    ),


  ];

  // int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType =
  //     SharedAxisTransitionType.horizontal;

  @override
  Widget build(BuildContext context) {
    // _currentPageIdx = widget.currentPageIdx;

    return Scaffold(
      appBar:NewGradientAppBar(
        // brightness: Brightness.light,
        elevation: 20,
        // 
          gradient: LinearGradient(colors: [Color.fromARGB(206, 10, 10, 10),  Color.fromARGB(255, 0, 50, 85)]),  
        title: Text(
          ' Replication of DNA',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
            backgroundColor:Color.fromARGB(255, 3, 34, 54),

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
                    child: const Text('الـسـابـق',style: TextStyle(fontFamily: "Cairo")),
                  ),
                   TextButton(
                    onPressed: this._currentPageIdx == 0
                        ? null
                        : () => setState(() => this._currentPageIdx=0),
                    child: const Text('الـرئيـسـيـة',style: TextStyle(fontFamily: "Cairo",fontWeight: FontWeight.bold,fontSize: 20)),
                  ),
                  ElevatedButton(
                    onPressed: this._currentPageIdx == 3
                        ? null
                        : () => setState(() => this._currentPageIdx++),
                    child: const Text('الـتـالـي',style: TextStyle(fontFamily: "Cairo"),),
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
      gradient: LinearGradient(
      colors: [
        Color.fromARGB(206, 10, 10, 10),
        Color.fromARGB(255, 0, 68, 117)
      ]
    )
      ),
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
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   TextButton(
//                     onPressed: this._currentPageIdx == 0
//                         ? null
//                         : () => setState(() => this._currentPageIdx--),
//                     child: const Text('BACK'),
//                   ),
//                   ElevatedButton(
//                     onPressed: this._currentPageIdx == 2
//                         ? null
//                         : () => setState(() => this._currentPageIdx++),
//                     child: const Text('NEXT'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: _buildControlBar(),
//     );
//   }

//   Widget _buildControlBar() {
//     return Container(
//       decoration: BoxDecoration(
//       gradient: LinearGradient(
//       colors: [
//         Color.fromARGB(206, 10, 10, 10),
//         Color.fromARGB(255, 0, 68, 117)
//       ]
//     )
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListTile(
//             title: const Text('Transition Type',
//              style: TextStyle(color: Colors.white),),
//             trailing: DropdownButton<SharedAxisTransitionType>(
//               value: _transitionType,
//               items: [
//                 for (final val in SharedAxisTransitionType.values)
//                   DropdownMenuItem(
//                     value: val,
//                     child: Text(
//                       val
//                           .toString()
//                           .substring('SharedAxisTransitionType.'.length),
//                     ),
//                   )
//               ],
//               onChanged: (SharedAxisTransitionType? val) {
//                 if (val != null) setState(() => this._transitionType = val);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LessonScreen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 5, 50, 80),
//         // appBar: NewGradientAppBar(
//         //     title: Text(
//         //       'LESSON 2',
//         //       style: TextStyle(
//         //         color: Color.fromARGB(255, 255, 255, 255),
//         //       ),
//         //     ),
//         //     centerTitle: true,
//         //     gradient: LinearGradient(colors: [
//         //       Colors.blue,
//         //       Color.fromARGB(255, 44, 176, 39),
//         //       Color.fromARGB(255, 21, 255, 0)
//         //     ])),
//         body: ListView(children: [
//           Stack(
//             children: [
//               Container(
//                 padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//                 height: 70,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15),
//                   ),
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     stops: [0.1, 0.5],
//                     colors: [
//                       Color.fromARGB(255, 81, 255, 0),
//                       Color.fromARGB(255, 0, 175, 0),
//                     ],
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "LEESSON 2",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "Poppins",
//                             fontSize: 24,
//                             color: Color.fromARGB(255, 5, 50, 80),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 top: 15,
//                 child: GestureDetector(
//                   onTap: () => Navigator.pop(context),
//                   child: Container(
//                     padding: EdgeInsets.all(10),
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: Color.fromARGB(255, 5, 50, 80),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text(
//                 'تضاعف DNA شبه المحافظ ',
//                 textDirection: TextDirection.rtl,
//                 style: TextStyle(
//                   fontFamily: 'Cairo',
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           InstaImageViewer(
//             child: Container(
//               width: 200,
//               height: 200,
//               alignment: Alignment.topLeft,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/icons/trkip.png'),
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text(
//                 'اقترح واطســون وكريك طريقــة محتملة لتضاعف جزيء DNA ،وهو ما يســمى عملية التضاعف شــبه المحافظ؛ حيــث تنفصل خالل التضاعف شــبه المحافظ  replication semiconservative سلاســل DNA الاصلية لتعمل بوصفها قوالب templates ،وتبدأ عملية التضاعف، فينتج جزيء DNA  مكون من سلســلة أصلية وأخرى جديدة. درست من قبل أن تضاعف DNA يحدث في الطور البيني لالنقسام المتســاوي أو المنصف. تتضمن عملية التضاعف شــبه المحافظ ثالث مراحل، هــي: فك الالتواء، وارتبــاط القواعد في أزواج، وإعادة ربط السلاسل، فكا الالتواء Unwinding يســمى اإلنزيم المســؤول عن فك االلتواء وفصل جزيء DNA الحلزوني المزدوج إنزيم فك االلتواء   هيليكيز helicase .',
//                 textDirection: TextDirection.rtl,
//                 style: TextStyle(
//                   fontFamily: 'Cairo',
//                   color: Colors.white,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text(
//                 'وعندما تنفصل سلاسل الحلزون المزدوج تتكسر الروابط  الهيدروجينيــة بين القواعد، فتتكون سلاسل DNA منفردة.  ثم تقوم بروتينات تســمى البروتينات المرتبطة مع السالسل المنفردة، باالرتبــاط بجزيء DNA لضمان بقاء السلاسل منفصلــة بعضها عن بعــض خالل عمليــة التضاعف. وبعد ســمى إنزيم االنتهاء من فك التواء الحلزون يقوم إنزيم آخري RNA  البادئ   primase RNA   بإضافة قطعة صغيرة من RNA ، تسمى قطعة RNA الأولية، إلى كل سلسلة من سلسله DNA .',
//                 textDirection: TextDirection.rtl,
//                 style: TextStyle(
//                   fontFamily: 'Cairo',
//                   color: Colors.white,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//           ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Text(
          //       'ارتباط القواعــــد في أزواج  Base pairing ',
          //       textDirection: TextDirection.rtl,
          //       style: TextStyle(
          //         fontFamily: 'Cairo',
          //         fontSize: 20,
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          // InstaImageViewer(
          //   child: Container(
          //     width: 200,
          //     height: 200,
          //     alignment: Alignment.topLeft,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('assets/icons/Screenshot_112.png'),
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Text(
          //       'يحفــز إنزيم بلمرة DNA polymeras DNA إضافة النيوكليوتيدات المناسبة إلى سلســلة DNA الجديدة. تضاف النيوكليوتيدات إلــى النهاية   الطــرف  3 في السلســلة الجديــدة، تذكر أن كل قاعدة نيتروجينية ترتبط بالقاعدة النيتروجينية المتممة لها فقط – مثــا القاعدة النيتروجينية A ترتبــط مع T ،و C ترتبط مع G .وهذه الطريقة تســمح بإنتاج نسخ متماثلة من جزيء DNA الحلزوني المزدوج الاصلي.  السلسلتين تصنعان بطريقتين مختلفتين  قليال  . فإحدهما تسمى السلسلة الرئيسة، ويزداد طولها عندما يتم فك الالتواء في اتجاه شــوكة التضاعف. ويتم إنتاج هذه السلسلة بإضافة النيوكليوتيدات بشكل متواصل إلى النهاية.',
          //       textDirection: TextDirection.rtl,
          //       style: TextStyle(
          //         fontFamily: 'Cairo',
          //         color: Colors.white,
          //         fontWeight: FontWeight.w400,
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Text(
          //       'أما سلســلة DNA  األخرى فتسمى السلســلة الثانوية، ويزداد طولها في عكس  اتجاه شــوكة التضاعف. وتصنع هذه السلسلة بشكل غير متواصل، وفي صورة  قطع تســمى قطــع أوكازاكــيfragments okazaki ،باســتخدام إنزيم بلمرة DNA وفي االتجاه من 3 إلى 5 .  يتــم ربط هذه القطع الحقا بإنزيم ربط DNA  ligase . ويبلــغ طول كل قطعة من قطع أوكازاكي نحو 100 – 200 نيوكليوتيد  في المخلوقات الحية الحقيقية النوى. ولم  ا كانت إحدى السالسل تصنع بشكل ســمى شبه  متواصل واألخرى تصنع بشــكل غير متواصل فإن تضاعف DNA ي المتقطع، وكذلك شبه المحافظ.',
          //       textDirection: TextDirection.rtl,
          //       style: TextStyle(
          //         fontFamily: 'Cairo',
          //         color: Colors.white,
          //         fontWeight: FontWeight.w400,
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Text(
          //       'اعادة ربط السلاسل  Joining ',
          //       textDirection: TextDirection.rtl,
          //       style: TextStyle(
          //         fontFamily: 'Cairo',
          //         fontSize: 20,
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Text(
          //       'على الرغم من أن السلســلة الاصلية تصنع بشــكل متواصل فإن تضاعف DNA في الخاليا الحقيقية النــوى يبدأ عادة في عدة مناطق على طول الكروموسوم، وعندما يصل إنزيم بلمرة DNA إلى RNA البادئ فإنه يزيل البادئ ويســتبدل به نيوكليوتيــدات    DNA ثم يقوم إنزيم ربط DNA بربط الجزأين.',
          //       textDirection: TextDirection.rtl,
          //       style: TextStyle(
          //         fontFamily: 'Cairo',
          //         color: Colors.white,
          //         fontWeight: FontWeight.w400,
          //       ),
          //     ),
          //   ),
          // ),
//         ]));
//   }
// }
