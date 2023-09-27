// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/color.dart';

class VideoSlide extends StatelessWidget {
  const VideoSlide({Key? key}) : super(key: key);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "DNA , RNA , Protein",
                style: const TextStyle(fontFamily: "Poppins", fontSize: 25),
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
                    URL('https://drive.google.com/file/d/1CVQqfUKbmH6GriF4-hboRa5KzFqwjLWP/view');
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
                    URL('https://drive.google.com/file/d/1CSMT81FXn5GQ9xgL8vC20KZ8gUJKYJap/view');
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
