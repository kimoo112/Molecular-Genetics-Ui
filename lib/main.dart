// ignore_for_file: unused_import

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:education_app/screens/Alarms/alarm1.dart';
import 'package:education_app/screens/Notify/noti.dart';
import 'package:education_app/screens/Splash/splash.dart';
import 'package:education_app/screens/featuerd_screen.dart';
import 'package:education_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
    'android/app/src/main/res/drawable/ic_launcher.png',
    [
      NotificationChannel(
        channelKey: 'basic key',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        ledColor: Colors.white,
        importance: NotificationImportance.High,
      )
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Molecular Genetics',
            theme: ThemeData(
              iconButtonTheme: IconButtonThemeData(
                  style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
              )),
              textTheme: Theme.of(context).textTheme.apply(
                    fontFamily: 'Cario',
                    bodyColor: Colors.white,
                  ),
              fontFamily: 'Cario',
              useMaterial3: true,
            ),
            home: SplashScreen(),
          );
        });
  }
}
