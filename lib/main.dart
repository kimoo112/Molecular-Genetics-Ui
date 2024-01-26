import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:education_app/Logic/google%20auth%20cubit/google_auth_cubit.dart';
import 'package:education_app/Logic/profile_image_cubit/profile_image_cubit.dart';
import 'package:education_app/screens/Splash/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Logic/Read Notes Cubit/notes_cubit.dart';
import 'constants/color.dart';
import 'constants/strings.dart';
import 'firebase_options.dart';
import 'models/note_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(hiveBox);
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
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GoogleAuthCubit(),
            ),
            BlocProvider(
              create: (context) => ProfileImageCubit(),
            ),
            BlocProvider(create: (context) => NotesCubit())
          ],
          child: MaterialApp(
              localizationsDelegates: [
                GlobalCupertinoLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                Locale(
                  "ar",
                ), // OR Locale('ar', 'AE') OR Other RTL locales
              ],
              locale: Locale(
                "ar",
              ), // OR,
              debugShowCheckedModeBanner: false,
              title: 'Molecular Genetics',
              theme: ThemeData(
                scaffoldBackgroundColor: cNavy,
                iconButtonTheme: IconButtonThemeData(
                    style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                )),
                textTheme: Theme.of(context).textTheme.apply(
                      fontFamily: 'Almarai',
                      bodyColor: Colors.white,
                    ),
                fontFamily: 'Almarai',
                useMaterial3: true,
              ),
              home: SplashScreen()),
        );
      },
    );
  }
}
