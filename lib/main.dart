// ignore_for_file: unused_import, unused_local_variable

// import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:education_app/Logic/App%20Theme%20Cubit/app_theme_cubit.dart';
import 'package:education_app/screens/Alarms/alarm1.dart';
import 'package:education_app/screens/Base/base_screen.dart';
import 'package:education_app/screens/Splash/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'screens/Notify/notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'basic key',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        ledColor: Colors.white,
        importance: NotificationImportance.High,
      ),
      NotificationChannel(
        channelKey: 'firebase key',
        channelName: 'firebase notifications',
        channelDescription: 'Notification channel for basic tests',
        ledColor: Colors.white,
        importance: NotificationImportance.High,
      )
    ],
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: 'YourAPP',
  );
  FirebaseMessaging masseging = FirebaseMessaging.instance;
  NotificationSettings settings = await masseging.requestPermission();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  notifications notification = notifications();

  @override
  void initState() {
    super.initState();
    notification.initializeSettings();
  }

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
                bottomNavigationBarTheme: BottomNavigationBarThemeData(),
                scaffoldBackgroundColor: Colors.white,
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
              home: SplashScreen());
        });
  }
}
