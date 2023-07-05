import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class SlideImage extends StatelessWidget {
  final String image;
  const SlideImage({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.4),
                blurRadius: 20,
                spreadRadius: 2,
                offset: Offset(2, 5)),
          ],
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InstaImageViewer(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(image))),
        ));
  }
}
