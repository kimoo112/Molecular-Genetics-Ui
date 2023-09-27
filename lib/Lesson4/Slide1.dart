import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../widgets/slideImage.dart';

class Slide1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cNavy2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                      SlideImage(image: "assets/Slides/4/Slide2.PNG"),

          ],
        ),
      
    );
  }
}
