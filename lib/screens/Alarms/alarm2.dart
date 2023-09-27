import 'package:flutter/material.dart';
import '../../widgets/background.dart';
import '../Notify/noti.dart';

DateTime scheduleTime = DateTime.now();

class Alarmscreen2 extends StatefulWidget {
  const Alarmscreen2({super.key});

  @override
  State<Alarmscreen2> createState() => _Alarmscreen2State();
}

class _Alarmscreen2State extends State<Alarmscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
          title: Text("Lesson 2 ",
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

        NotificationService().scheduleNotification(
            title: 'Lesson 2',
            body: 'Go To Lesson 2',
            id: 2,
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
