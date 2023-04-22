import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:education_app/screens/base_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as image;
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:workmanager/workmanager.dart';
import 'background.dart';
import 'noti.dart';

DateTime scheduleTime = DateTime.now();

@override
class AlarmScreen extends StatefulWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 0, 68),
        appBar: AppBar(
          title: const Text(
            'NOTIFY',
            style: TextStyle(color: Color.fromARGB(255, 24, 0, 68)),
          ),
          backgroundColor: Colors.amber,
          // leading: IconButton(onPressed: Navigator.push, icon: Icon(Icons.arrow_back)),
        ),
        body: Stack(
          
          children: [
                 AnimatingBg4(),

            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //  SizedBox(height: 20,),

              //   Text("Lesson 1",style: TextStyle(color: Colors.white),),
              //   DatePickerTxt(),
              //   ScheduleBtn(),
              //  SizedBox(height: 50,),
              //    Text("Lesson 2",style: TextStyle(color: Colors.white),),
              //   DatePickerTxt(),
              //   ScheduleBtn(),
              //  SizedBox(height: 50,),

              //    Text("Lesson 3",style: TextStyle(color: Colors.white),),
              //   DatePickerTxt(),
              //   ScheduleBtn(),
              //  SizedBox(height: 50,),

              //    Text("Lesson 4",style: TextStyle(color: Colors.white),),
                DatePickerTxt(),
                ScheduleBtn(),
              ],
            )
                // Text('Notify, Progress...!',style: TextStyle(color: Colors.amber),),
                ),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: 1,
          onTap: (index) {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BaseScreen()),
              );
            }
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(
                Icons.home,
                size: 20,
                color: Colors.white,
              ),
              title: Text(
                "الـرئـيـسـية",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: Color.fromARGB(255, 0, 83, 238),
            ),

            /// TKRAR
            SalomonBottomBarItem(
              icon: Icon(
                Icons.alarm_add,
                size: 20,
              ),
              title: Text(
                "الـتـكـرار",
                style: TextStyle(fontSize: 11, fontFamily: "Cairo"),
              ),
              selectedColor: Colors.amber,
            ),
          ],
        ));
  }
}

class ScheduleBtn extends StatelessWidget {
  const ScheduleBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        )),
      ),
      child: const Text(
        'APP NOTIFY',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        debugPrint('Notification Scheduled for $scheduleTime');
        NotificationService().scheduleNotification(
            title: 'Molecular Genetics',
            body: 'Open The App',
            scheduledNotificationDateTime: scheduleTime);
      },
    );
  }
}

class DatePickerTxt extends StatefulWidget {
  const DatePickerTxt({
    Key? key,
  }) : super(key: key);

  @override
  State<DatePickerTxt> createState() => _DatePickerTxtState();
}

class _DatePickerTxtState extends State<DatePickerTxt> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        DatePicker.showDateTimePicker(
          context,
          showTitleActions: true,
          onChanged: (date) => scheduleTime = date,
          onConfirm: (date) {},
        );
      },
      child: const Text(
        'Push The Notify',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
