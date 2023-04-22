import 'package:animations/animations.dart';
import 'package:education_app/constants/color.dart';
import 'package:education_app/models/lesson.dart';
import 'package:education_app/screens/alarm3.dart';
import 'package:education_app/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:grouped_list/grouped_list.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'alarmScreen.dart';
import 'background.dart';
import 'lessonScreen2.dart';
import 'lessonScreen3.dart';
import 'lessonsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsScreen3 extends StatefulWidget {
  @override
  _DetailsScreen3State createState() => _DetailsScreen3State();
}

class _DetailsScreen3State extends State<DetailsScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      appBar: NewGradientAppBar(
        // brightness: Brightness.light,
        elevation: 20,
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 3, 18, 53),
          Color.fromARGB(255, 17, 35, 77),
        ]),

        // shadowColor: Color(0xffF0F0F0).withOpacity(.4),
        // backgroundColor: Color.fromARGB(206, 17, 17, 17),
        title: Text(
          'DNA , RNA , Protein ',
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
                  MaterialPageRoute(builder: (context) => Alarmscreen3()));
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

// int _currentPageIdx = 0;
// SharedAxisTransitionType _transitionType = SharedAxisTransitionType.vertical;
Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage(
        'assets/icons/bold 1 ls 2.jpg',
        'المبدأ الأساسي',
        context,
      ),
      cardWithInfoPage('assets/icons/bold 2 ls 2.jfif', 'جزيء RNA', context),
      cardWithInfoPage('assets/icons/bold 3 ls 2.jfif', 'عملية النسخ', context),
      cardWithInfoPage('assets/icons/bold 4 ls 2.jpg', 'معالجة RNA', context),
      cardWithInfoPage('assets/icons/bold 5 ls 2.jfif', 'الشفرة', context),
      cardWithInfoPage('assets/icons/bold 6 ls 2.webp', 'الترجمة', context),
      cardWithInfoPage('assets/icons/riposm.jpg', 'دور الرايبوسوم', context),
      cardWithInfoPage('assets/icons/riposm.jpg', 'الرايبوسوم 2', context),
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
        if (name == 'المبدأ الأساسي') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonScreen3(
                currentPageIdx: 0,
              ),
            ),
          );
        } else if (name == 'جزيء RNA') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'عملية النسخ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == 'معالجة RNA') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 3,
                    )),
          );
        } else if (name == 'الشفرة') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 4,
                    )),
          );
        } else if (name == 'الترجمة') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 5,
                    )),
          );
        } 
        else if (name == 'الرايبوسوم 2') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 7,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen3(
                      currentPageIdx: 6,
                    )),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                                    color:
                                                 Colors.white,

                                  ),
                                  textAlign: TextAlign.start,
                                  textDirection: TextDirection.rtl,
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

// class DetailsScreen3 extends StatefulWidget {
//   final String title;
//   const DetailsScreen3({
//     Key? key,
//     required this.title,
//   }) : super(key: key);

//   @override
//   _DetailsScreen3State createState() => _DetailsScreen3State();
// }

// class _DetailsScreen3State extends State<DetailsScreen3> {
//   int _selectedTag = 0;

//   void changeTab(int index) {
//     setState(() {
//       _selectedTag = index;
//     });
//   }
//   List _elements = [
//   {'name': 'John', 'group': 'Team A'},
//   {'name': 'Will', 'group': 'Team B'},
//   {'name': 'Beth', 'group': 'Team A'},
//   {'name': 'Miranda', 'group': 'Team B'},
//   {'name': 'Mike', 'group': 'Team C'},
//   {'name': 'Danny', 'group': 'Team C'},
// ];

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
//                           "lesson 3",
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

//               ],
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
//                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => LessonScreen3()));

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
