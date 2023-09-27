import 'package:education_app/screens/Details/prepared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../../models/course.dart';
import '../Quiz/quiz_screen copy.dart';
import '../Quiz/quiz_screen.dart';
import 'details_screen.dart';
import 'details_screen2.dart';
import 'details_screen3.dart';
import 'details_screen4.dart';
import 'goals.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0),
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text('الـــدروس',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)
                            // Theme.of(context).textTheme.displayMedium,

                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    shrinkWrap: true,
                    itemBuilder: (_, int index) {
                      return CourseContainer(
                        course: courses[index],
                      );
                    },
                    itemCount: courses.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  final Course course;
  const CourseContainer({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (course.name == "الدرس الأول ") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => DetailsScreen()));
        } else if (course.name == "الدرس الثاني ") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsScreen2(
                      // title: 'course.name',
                      )));
        } else if (course.name == " الـأهــداف") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => GoalsScreen(
                      // title: 'course.name',
                      )));
        } else if (course.name == " أعــداد") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => PreparedScreen(
                      // title: 'course.name',
                      )));
        } else if (course.name == "الدرس الثالث ") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsScreen3(
                      // title: 'course.name',
                      )));
        } else if (course.name == "الدرس الرابع") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => DetailsScreen4()));
        } else if (course.name == "التقويم البعدي") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => QuizScreen()));
        } else if (course.name == " التقويم القبلي") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => QuizScreen2()));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                course.thumbnail,
                width: 100,
                // height: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    course.name,
                    style: TextStyle(
                        fontSize: 15, fontFamily: "Cairo", color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${course.author}",
                        style: TextStyle(
                            overflow: TextOverflow.fade,
                            fontSize: 12.sp,
                            fontFamily: "Poppins",
                            color: Color(0xFF242323),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  LinearProgressIndicator(
                    value: course.completedPercentage,
                    backgroundColor: Colors.black12,
                    color: cPrimary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
