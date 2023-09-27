import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';

import '../widgets/slideImage.dart';

class Slide16 extends StatelessWidget {
  const Slide16({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cNavy2,
      child: Center(child: 
                            SlideImage(image: "assets/Slides/3/Slide17.PNG"),

      ),
    );
  }
}