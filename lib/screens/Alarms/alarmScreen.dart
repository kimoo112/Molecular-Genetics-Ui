import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
            style: TextStyle(color: Color.fromARGB(255, 24, 0, 68),
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
                 AnimatingBg4(),

            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
