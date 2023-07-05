import 'package:flutter/material.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../widgets/background.dart';
import '../Notify/noti.dart';

DateTime scheduleTime = DateTime.now();

class Alarmscreen4 extends StatefulWidget {
  const Alarmscreen4({super.key});

  @override
  State<Alarmscreen4> createState() => _Alarmscreen4State();
}

class _Alarmscreen4State extends State<Alarmscreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
          title: Text("Lesson 4 ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
      body: Stack(
        children: [
          AnimatingBg4(),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              DatePickerTxt(),
              ScheduleBtn(),
            ]),
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
        'Click Here After Make Date ',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        debugPrint('Notification Scheduled for $scheduleTime');
        NotificationService().scheduleNotification(
            title: 'Lesson 4',
            body: 'Go To Lesson 4',
            id: 4,
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
        'Choose Your Time ',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
