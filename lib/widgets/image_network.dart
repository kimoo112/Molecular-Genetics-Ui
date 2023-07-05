
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class ImageNetwork extends StatelessWidget {
  final String image;
  const ImageNetwork({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        InstaImageViewer(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.network(
              image,
              width: 300,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset("assets/icons/animation_500_ljcngnmb.gif",width: 250,);
              },
            ),
          ),
        ),
      ],
    );
  }
}
