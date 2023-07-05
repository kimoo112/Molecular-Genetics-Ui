// ignore_for_file: unused_import

import 'package:education_app/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';

import '../../widgets/background.dart';
import '../Base/base_screen.dart';
import '../Notify/noti.dart';

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
          'الـتـكـرار',
          style: TextStyle(
            color: Color.fromARGB(255, 24, 0, 68),
            fontFamily: "Cairo",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        // leading: IconButton(onPressed: Navigator.push, icon: Icon(Icons.arrow_back)),
      ),
      body: Stack(
        children: [
          AnimatingBg5(),
          SizedBox(width: double.infinity,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
         Switcher(
                      value: false,
                      size: SwitcherSize.large,
                        switcherButtonRadius: 50,
                      colorOn: cYellow,
                        iconOff: CupertinoIcons.bell_slash_fill,
                        iconOn: CupertinoIcons.bell_fill,
                      colorOff: cDark,
                      onChanged: (bool state) {
                        state ? SimpleAlertBox(
          context: context,
          title: "Open The App ",
          titleTextColor: cNavy,
          buttonColor: cNavy,
        infoMessage: "You Have Some Lessons to Complete ",
        icon: CupertinoIcons.bell_solid,
        messageTextColor: cNavy.withOpacity(.5)
        ): print("object");
                      },
                    ),

            ],
          ),
          ),
          
        ],
      ),
    );
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
        SimpleAlertBox(
          context: context,
          title: "Open The App ",
          titleTextColor: cNavy,
          buttonColor: cNavy,
        infoMessage: "You Have Some Lessons to Complete ",
        icon: CupertinoIcons.bell_solid,
        messageTextColor: cNavy.withOpacity(.5)
        );

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
        // DatePicker.showDateTimePicker(
        //   context,
        //   showTitleActions: true,
        //   onChanged: (date) => scheduleTime = date,
        //   onConfirm: (date) {},
        // );
      },
      child: const Text(
        'Push The Notify',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
