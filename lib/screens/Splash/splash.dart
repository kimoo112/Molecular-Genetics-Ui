import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:uuid/uuid.dart';

import '../../constants/color.dart';
import '../onboarding/onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isHaveMoney = true;

  final now = DateTime.now();

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
    return FlutterSplashScreen.scale(
      duration: Duration(seconds: 6),
      backgroundColor: cNavy,
      childWidget: SizedBox(
        height: 200.sp,
        width: 250.sp,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Lottie.asset('assets/icons/splashLottie.json'),
            const SizedBox(height: 20),
            Text(
              'عــلمـنـي',
              style: TextStyle(
                color: cLight,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 33.sp,
              ),
            ),
          ],
        ),
      ),
      nextScreen: OnboardingView(),
    );
  }
}
