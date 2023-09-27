import 'package:flutter/material.dart';

import '../widgets/slideImage.dart';

class Slide6 extends StatelessWidget {
  const Slide6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(child: 
                            SlideImage(image: "assets/Slides/2/Slide7.PNG"),

      ),
    );
  }
}