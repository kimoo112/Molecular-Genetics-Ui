import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../widgets/slideImage.dart';

class Slide3 extends StatelessWidget {
  const Slide3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cNavy,
      child: Center(child: 
                             SlideImage(image: "assets/Slides/2/Slide4.PNG"),


      ),
    );
  }
}
