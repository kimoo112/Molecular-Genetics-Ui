// ignore_for_file: unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/color.dart';
import '../../constants/size.dart';
import '../../models/category.dart';
import '../../widgets/drawer.dart';
import '../../widgets/search_testfield.dart';
import '../Details/course_screen.dart';
import '../Details/details_screen.dart';
import '../Details/details_screen2.dart';
import '../Details/details_screen3.dart';
import '../Details/details_screen4.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key,}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  bool _bool = true;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _bool = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: .3).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseScreen(),
                    ),
                  );
                },
                child: Text(
                  "...المـزيـد",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ).copyWith(color: cPrimary),
                ),
              ),
              Text("الـدروس",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoryList[index],
            );
          },
          itemCount: categoryList.length,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (category.name) {
          case "الدرس الأول":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen()),
            );
            break;
          case "الدرس الثاني":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen2()),
            );
            break;
          case "الدرس الثالث":
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen3(
                      // title: 'LESSON 3',
                      )),
            );
            break;
          case "الدرس الرابع":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen4()),
            );
            break;
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.05,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  category.thumbnail,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(.22), // Replace with your desired color
  colorBlendMode: BlendMode.darken, // Specify the color blend mode
                ),
              ),
            ),
            // add more widgets as needed

            const SizedBox(
              height: 14,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                category.lessonName,
                style: TextStyle(
                  fontFamily: "Cairo",
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.036,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatefulWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  bool _bool = true;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _bool = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: .3).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height *
            0.051, // adjust top padding based on screen height
        left: MediaQuery.of(context).size.width *
            0.05, // adjust left padding based on screen width
        right: MediaQuery.of(context).size.width *
            0.05, // adjust right padding based on screen width
      ),
      height: MediaQuery.of(context).size.height *
          0.23, // adjust height based on screen height
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Colors.blueAccent,
            Color.fromARGB(255, 39, 7, 184),
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // "Welcome,\nTo My App",
            "مرحبا بك في برنامج الوراثة الجزيئية",

            style: TextStyle(
              fontFamily: "Cairo",
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: Colors.white,
            ),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(
            height: 15,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
