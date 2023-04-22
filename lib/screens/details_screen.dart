import 'package:education_app/constants/color.dart';
import 'package:education_app/models/lesson.dart';
import 'package:education_app/screens/details_screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:grouped_list/grouped_list.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import '../models/course.dart';
import 'alarm1.dart';
import 'alarmScreen.dart';
import 'background.dart';
import 'lessonScreen2.dart';
import 'lessonScreen3.dart';
import 'lessonsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'المادة الوراثية',
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
                  MaterialPageRoute(builder: (context) => Alarmscreen1()));
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
          'assets/icons/bold 1 ls 1.jpg', 'اكتشاف المادة الوراثية ', context),
      cardWithInfoPage(
          'assets/icons/bold 2 ls 1.jfif', 'العالم جريفيث', context),
      cardWithInfoPage('assets/icons/bold 2 ls 1.jfif', 'جريفيث 2', context),
      cardWithInfoPage('assets/icons/bold 3 ls 1.jpg', 'أفري Avery', context),
      cardWithInfoPage(
          'assets/icons/bold 4 ls 1.png', 'هيرشي  وتشيسي', context),
      cardWithInfoPage(
          'assets/icons/bold 5 ls 1.png', 'العلامات المشعة', context),
      cardWithInfoPage(
          'assets/icons/bold 6 ls 1.jfif', 'DNA Tracking', context),
      cardWithInfoPage('assets/icons/bold 7 ls 1.jpg', 'تركيب د.ن.أ', context),
      cardWithInfoPage(
          'assets/icons/bold 8 ls 1.jfif', 'النيوكليوتدات', context),
      cardWithInfoPage(
          'assets/icons/bold 9 ls 1.jfif', 'تشارجاف Chargaff', context),
      cardWithInfoPage(
          'assets/icons/bold 10 ls 1.jpg', 'ويلكنز Wilkins', context),
      cardWithInfoPage(
          'assets/icons/bold 11 ls 1.jpeg', 'واطسون وكريك ', context),
      cardWithInfoPage('assets/icons/bold 13 ls 1.jfif', 'تركيب DNA', context),
      cardWithInfoPage(
          'assets/icons/bold 12 ls 1.png', 'الاتجاه Orientation', context),
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
        if (name == 'اكتشاف المادة الوراثية ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 0,
                    )),
          );
        } else if (name == 'العالم جريفيث') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 1,
                    )),
          );
        } else if (name == 'جريفيث 2') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 2,
                    )),
          );
        } else if (name == 'أفري Avery') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 3,
                    )),
          );
        } else if (name == 'هيرشي  وتشيسي') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 4,
                    )),
          );
        } else if (name == 'العلامات المشعة') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 5,
                    )),
          );
        } else if (name == 'DNA Tracking') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 6,
                    )),
          );
        } else if (name == 'تركيب د.ن.أ') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 7,
                    )),
          );
        } else if (name == 'النيوكليوتدات') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 8,
                    )),
          );
        } else if (name == 'تشارجاف Chargaff') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 9,
                    )),
          );
        } else if (name == 'ويلكنز Wilkins') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 10,
                    )),
          );
        } else if (name == 'واطسون وكريك') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 11,
                    )),
          );
        } else if (name == 'تركيب DNA') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 12,
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LessonScreen(
                      currentPageIdx: 13,
                    )),
          );
        }
      },
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
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                    fontSize: _f * 20,
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
          iconSize: 90,
          onPressed: () {
            HapticFeedback.lightImpact();
          },
        ),
      ],
    ),
  );
}



// class DetailsScreen extends StatefulWidget {
//   final String title;
//   const DetailsScreen({
//     Key? key,
//     required this.title,
//   }) : super(key: key);

//   @override
//   _DetailsScreenState createState() => _DetailsScreenState();
// }

// class _DetailsScreenState extends State<DetailsScreen> {
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
//                           "LESSON 1",
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
//                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => LessonScreen()));

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
// // class CourseContainer extends StatelessWidget {
// //   final Course course;
// //   const CourseContainer({
// //     Key? key,
// //     required this.course,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () {
// //         if (course.name == "LESSON 1") {
// //           Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (_) => DetailsScreen(
// //                         title: 'course.name',
// //                       )));
// //         } else if (course.name == "LESSON 2") {
// //           Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (_) => LessonScreen(
                        
// //                       )));
// //         } else if (course.name == "LESSON 3") {
// //           Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (_) => LessonScreen(
                        
// //                       )));
// //         } else if (course.name == "LESSON 4") {
// //           Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (_) => LessonScreen(
// //                         // title: 'course.name',
// //                       )));
// //         } else if (course.name == "QUIZ") {
// //           Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (_) => LessonScreen(
                       
// //                       )));
// //         }
// //       },
// //       child: Container(
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(10),
// //           color: Colors.white,
// //         ),
// //         padding: const EdgeInsets.all(10),
// //         child: Row(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             ClipRRect(
// //               borderRadius: BorderRadius.circular(10),
// //               child: Image.asset(
// //                 course.thumbnail,
// //                 height: 60,
// //               ),
// //             ),
// //             const SizedBox(
// //               width: 10,
// //             ),
// //             Expanded(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(course.name),
// //                   Text(
// //                     "${course.author}",
// //                     style: Theme.of(context).textTheme.bodySmall,
// //                     textAlign: TextAlign.end,
// //                   ),
// //                   const SizedBox(
// //                     height: 5,
// //                   ),
// //                   LinearProgressIndicator(
// //                     value: course.completedPercentage,
// //                     backgroundColor: Colors.black12,
// //                     color: kPrimaryColor,
// //                   )
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// // }