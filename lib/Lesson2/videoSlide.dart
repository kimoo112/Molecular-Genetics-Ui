// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/color.dart';

class VideoSlide extends StatelessWidget {
  const VideoSlide({Key? key}) : super(key: key);


  void videoUrl(link) async {
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
                "التضاعف شبه المحافظ",
                style: const TextStyle(fontFamily: "Cairo", fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    videoUrl('https://drive.google.com/file/d/1CZVkcA95x_AF4INQEzHgkVC97Xx7MMg6/view');
                  },
                  icon: Icon(
                    CupertinoIcons.play_arrow_solid,
                    color: Colors.red[600],
                    size: 50,
                  )),
              Text(
                "الفيديو الأول",
                style: const TextStyle(fontFamily: "Almarai", fontSize: 30),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    videoUrl('https://drive.google.com/file/d/1ClNm9eTqx_VItEP-pTCzlPq_EL-t1M58/view');
                  },
                  icon: Icon(
                    CupertinoIcons.play_arrow_solid,
                    color: Colors.red[600],
                    size: 50,
                  )),
              Text(
                "الفيديو الثاني",
                style: const TextStyle(fontFamily: "Almarai", fontSize: 30),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
