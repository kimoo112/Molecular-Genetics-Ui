// ignore_for_file: unused_import

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:education_app/constants/color.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'package:uuid/uuid.dart';

import '../../widgets/background.dart';
import '../Base/base_screen.dart';

DateTime scheduleTime = DateTime.now();

@override
class AlarmScreen extends StatefulWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {

  bool isNotfy = false;

 

  @override
  void initState() {
    super.initState();
    setState(() {
      int id = Uuid().v4().hashCode;

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        AwesomeNotifications().createNotification(
            content: NotificationContent(
          id: id,
          channelKey: "firebase key",
          title: message.notification!.title,
          body: message.notification!.body,
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'الـتـكـرار',
          style: TextStyle(
            color: cYellow,
            shadows: [
              Shadow(
                  color: cDark.withOpacity(.3),
                  blurRadius: 10,
                  offset: Offset(-2, 0))
            ],
            fontFamily: "Cairo",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: cTransperet,
      ),
      body: Stack(
        children: [
          AnimatingBg5(),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hello The Repetition Is Come from Database ".toUpperCase(),
                    style: TextStyle(fontSize: 13.sp, fontFamily: "Poppins"),
                  ),
                ),
                //  Switcher(
     
                const SizedBox(height: 22),
        
                const SizedBox(height: 55),
        
              ],
            ),
          ),
        ],
      ),
    );
  }
}
