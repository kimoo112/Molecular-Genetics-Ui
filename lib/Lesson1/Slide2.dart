// ignore_for_file: deprecated_member_use

import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/slideImage.dart';

class Slide2 extends StatelessWidget {
  const Slide2({
    super.key,
  });
  void URL(link) async {
    final facebookUrl = link;

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      throw 'Could not launch Facebook';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cNavy2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            SlideImage(image: "assets/Slides/1/Slide3.PNG"),


          const SizedBox(height: 20),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
