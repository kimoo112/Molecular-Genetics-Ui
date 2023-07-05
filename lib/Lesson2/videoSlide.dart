import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/color.dart';

class VideoSlide extends StatelessWidget {
  const VideoSlide({Key? key}) : super(key: key);
void URL(link ) async {
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
      color: cNavy,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "التضاعف شبه المحافظ"   ,
                style: const TextStyle(fontFamily: "Cairo", fontSize: 25),
              ),
             
            ],
          ),
              const SizedBox(height:20),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "YOUTUBE VIDEO",
                style: const TextStyle(fontFamily: "Poppins", fontSize: 30),
              ),
              const SizedBox(width:20),
              IconButton(
                  onPressed: () {
                    URL('https://www.youtube.com/watch?v=6qGbbWDfyak');
                  },
                  icon: Icon(
                    CupertinoIcons.play_arrow_solid,
                    color: Colors.red[600],
                    size: 50,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
