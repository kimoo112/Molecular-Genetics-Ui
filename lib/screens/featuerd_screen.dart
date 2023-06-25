import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/color.dart';
import '../constants/size.dart';
import '../models/category.dart';
import '../widgets/search_testfield.dart';
import 'Details/course_screen.dart';
import 'Details/details_screen.dart';
import 'Details/details_screen2.dart';
import 'Details/details_screen3.dart';
import 'Details/details_screen4.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
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
    return SingleChildScrollView(
      child: Column(
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
                    ).copyWith(color: kPrimaryColor),
                  ),
                ),
                Text("الـدروس",
                    style: TextStyle(
                      fontFamily: "Cairo",
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
      ),
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
                  height: kCategoryCardImageSize,
                ),
              ),
            ),
            // add more widgets as needed

            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                category.name,
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 13,
                  //  MediaQuery.of(context).size.width * 0.02, // adjust the font size based on screen width
                ),
              ),
            ),
// Align(
//   alignment: Alignment.topCenter,
//   child: Text(
//     "${category.lessonName.toString()} ",
//     style: TextStyle(
//       fontFamily: "Cairo",
//       fontSize:8,
//       // MediaQuery.of(context).size.width * 0.015, // adjust the font size based on screen width
//     ),
//     textDirection: TextDirection.rtl,
//     textAlign: TextAlign.center,
//   ),
// ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height *
            0.1, // adjust top padding based on screen height
        left: MediaQuery.of(context).size.width *
            0.05, // adjust left padding based on screen width
        right: MediaQuery.of(context).size.width *
            0.05, // adjust right padding based on screen width
      ),
      height: MediaQuery.of(context).size.height *
          0.3, // adjust height based on screen height
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // "Welcome,\nTo My App",
                "مرحبا بك فى برنامج الوراثة الجزيئية",

                style: TextStyle(
                  fontFamily: "Cairo",
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.white,
                ),
              ),
              //   CircleButton(
              //     icon: Icons.notifications,
              //     onPressed: () {},
              //   ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
