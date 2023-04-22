import 'package:education_app/constants/color.dart';
import 'package:education_app/models/lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'dart:ui';
import 'package:grouped_list/grouped_list.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'alarm2.dart';
import 'alarmScreen.dart';
import 'background.dart';
import 'details_screen.dart';
import 'lessonScreen2.dart';
import 'lessonScreen3.dart';
import 'lessonsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsScreen2 extends StatefulWidget {
  @override
  _DetailsScreen2State createState() => _DetailsScreen2State();
}

class _DetailsScreen2State extends State<DetailsScreen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffF8F9FB),
        appBar: NewGradientAppBar(
          // brightness: Brightness.light,
          elevation: 20,
          gradient: LinearGradient(colors: [
            Color.fromARGB(206, 10, 10, 10),
            Color.fromARGB(255, 0, 50, 85)
          ]),
          // shadowColor: Color(0xffF0F0F0).withOpacity(.4),
          // backgroundColor: Color.fromARGB(206, 17, 17, 17),
          title: Text(
            'تضاعف DNA ',
            textScaleFactor: 1.12,
            style: TextStyle(
                color: Colors.white.withOpacity(.9),
                fontWeight: FontWeight.bold,
                 fontSize: 22,
                fontFamily: "Cairo"),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
          ),
          centerTitle: true,

          actions: [
  //           Tooltip(
  // message: 'الـتـكـرار',
  // textStyle: TextStyle(
  //   fontFamily: 'Cairo',
  //   fontSize: 16.0,
  //   color: Colors.black,
  // ),
  
              // child:
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
                      MaterialPageRoute(builder: (context) => Alarmscreen2()));
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
        'assets/icons/bold 1 ls 3.png',
        'تضاعف شبه المحافظ',
        context,
      ),
       cardWithInfoPage(
        'assets/icons/bold 1 ls 3.png',
        'تضاعف 2',
        context,
      ),
      cardWithInfoPage('assets/icons/bold 3 ls 3.png',
          'ارتباط القواعــــد في أزواج', context),
      cardWithInfoPage(
          'assets/icons/bold 2 ls 3.jfif', 'اعادة ربط السلاسل ', context),
      // cardWithInfoPage('assets/icons/file_name.png', 'معالجة RNA', context),
      // cardWithInfoPage('assets/icons/file_name.png', 'الشفرة', context),
      // cardWithInfoPage('assets/icons/translation transcription.png', 'الترجمة', context),
      // cardWithInfoPage('assets/icons/الريبوسوم.jpg', 'دور الرايبوسوم', context),
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
        if (name == 'تضاعف شبه المحافظ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 0,
                    )),
          );
        } 
        else if (name == 'تضاعف 2') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'ارتباط القواعــــد في أزواج') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == 'اعادة ربط السلاسل ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen2(
                      currentPageIdx: 3,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsScreen()),
          );
        } // add more conditions for other lesson screens
      },
      // return Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return LessonScreen3;
      //     },
      //   ),
      // );

      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
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
                      color: Colors.black.withOpacity(.1), blurRadius: 30),
                      ],
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit. cover,
                      ),
                    ),
                  ),
                   Container(
                      width:_w / 2.0,
                      // color: Colors.black,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Align(
                                alignment: Alignment.center,
                               
                                  child: Text(
                                    name,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize:  _f * 20,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(.8),
                                    ),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.rtl,
                                  ),
                                
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


// class DetailsScreen2 extends StatefulWidget {
//   @override
//   State<DetailsScreen2> createState() => _DetailsScreen2State();
// }

// class _DetailsScreen2State extends State<DetailsScreen2> {
//    final List<Map<String, dynamic>> _listData = [
//     {
      
//       'text': 'التضاعف شبه المحافظ',
//     },
//     {
      
//       'text': 'فحص الحمض النووي',
//     },
//     {
     
//       'text': 'الكيمياء الحيوية',
//     },
//     // add more data here as needed
//   ];
//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: AnimationLimiter(
//         child: ListView.builder(
//           padding: EdgeInsets.all(_w / 30),
//           physics:
//               BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//           itemCount: 20,
//           itemBuilder: (BuildContext c, int i) {
//             return AnimationConfiguration.staggeredList(
//               position: i,
//               delay: Duration(milliseconds: 100),
//               child: SlideAnimation(
//                 duration: Duration(milliseconds: 2500),
//                 curve: Curves.fastLinearToSlowEaseIn,
//                 horizontalOffset: 30,
//                 verticalOffset: 300.0,
//                 child: FlipAnimation(
//                   duration: Duration(milliseconds: 3000),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   flipAxis: FlipAxis.y,
//                   child: Container(
//                     margin: EdgeInsets.only(bottom: _w / 20),
//                     height: _w / 4,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 40,
//                           spreadRadius: 10,
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       children: [
//                         SizedBox(width: 30),
//                         Image.asset(
//                           'assets/icons/Dna-mutation.png', 
//                           width: 120,
//                         ),
//                         SizedBox(width: 20),
//                         Expanded(
//                           child: Text(
//                            "التضاعف  شبه المحافظ ",
//                              style: TextStyle(
//                             fontSize: 20,
//                             fontFamily: "Cairo"),
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
                  
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailsScreen5 extends StatefulWidget {
//   final String title;
//   const DetailsScreen5({
//     Key? key,
//     required this.title,
//   }) : super(key: key);

//   @override
//   _DetailsScreen5State createState() => _DetailsScreen5State();
// }

// class _DetailsScreen5State extends State<DetailsScreen5> {
//   int _selectedTag = 0;

//   void changeTab(int index) {
//     setState(() {
//       _selectedTag = index;
//     });
//   }
// //   List _elements = [
// //   {'name': 'John', 'group': 'Team A'},
// //   {'name': 'Will', 'group': 'Team B'},
// //   {'name': 'Beth', 'group': 'Team A'},
// //   {'name': 'Miranda', 'group': 'Team B'},
// //   {'name': 'Mike', 'group': 'Team C'},
// //   {'name': 'Danny', 'group': 'Team C'},
// // ];

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: SystemUiOverlayStyle.dark,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 IntrinsicHeight(
//                   child: Stack(
//                     children: [
//                       Align(
//                         child: Text(
//                           "lesson 2",
//                           style: Theme.of(context).textTheme.displayMedium,
//                         ),
//                       ),
//                       Positioned(
//                         left: 0,
//                         child: CustomIconButton1(
//                           child: const Icon(Icons.arrow_back),
//                           height: 35,
//                           width: 35,
//                           onTap: () => Navigator.pop(context),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//              ],
//             ),
//           ),
//         ),
//         bottomSheet: BottomSheet(
//           onClosing: () {},
//           backgroundColor: Colors.white,
//           enableDrag: false,
//           builder: (context) {
//             return const SizedBox(
//               height: 80,
//               child: EnrollBottomSheet(),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class CustomTabView extends StatefulWidget {
//   final Function(int) changeTab;
//   final int index;
//   const CustomTabView({Key? key, required this.changeTab, required this.index})
//       : super(key: key);

//   @override
//   State<CustomTabView> createState() => _CustomTabViewState();
// }

// class _CustomTabViewState extends State<CustomTabView> {
//   final List<String> _tags = [""];

//   Widget _buildTags(int index) {
//     return GestureDetector(
//       onTap: () {
//         widget.changeTab(index);
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(
//             horizontal: MediaQuery.of(context).size.width * .08, vertical: 15),
//         decoration: BoxDecoration(
//           color: widget.index == index ? kPrimaryColor : null,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Text(
//           _tags[index],
//           style: TextStyle(
//             color: widget.index != index ? Colors.black : Colors.white,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey.shade200,
//       ),
//       child: Row(
//         children: _tags
//             .asMap()
//             .entries
//             .map((MapEntry map) => _buildTags(map.key))
//             .toList(),
//       ),
//     );
//   }
// }

// class EnrollBottomSheet extends StatefulWidget {
//   const EnrollBottomSheet({Key? key}) : super(key: key);

//   @override
//   _EnrollBottomSheetState createState() => _EnrollBottomSheetState();
// }

// class _EnrollBottomSheetState extends State<EnrollBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 30.0,
//       ),
//       child: Row(
//         children: [
//           CustomIconButton1(
//             onTap: () {},
//             height: 45,
//             width: 45,
//             child: const Icon(
//               Icons.alarm_add_outlined,
//               color: kPrimaryLight,
//               size: 30,
//             ),
//           ),
//           const SizedBox(
//             width: 20,
//           ),
//           Expanded(
//             child: CustomIconButton1(
//               onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => LessonScreen2()));

//               },
//               color: kPrimaryColor,
//               height: 45,
//               width: 45,
//               child: const Text(
//                 "Read ALL",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


// class CustomIconButton1 extends StatelessWidget {
//   final Widget child;
//   final double height;
//   final double width;
//   final Color? color;
//   final VoidCallback onTap;

//   const CustomIconButton1({
//     Key? key,
//     required this.child,
//     required this.height,
//     required this.width,
//     this.color = Colors.white,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Ink(
//       child: InkWell(
//         borderRadius: BorderRadius.circular(12),
//         child: Center(child: child),
//         onTap: onTap,
//       ),
//       height: height,
//       width: width,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(.1),
//             blurRadius: 2.0,
//             spreadRadius: .05,
//           ), //BoxShadow
//         ],
//       ),
//     );
//   }
// }
