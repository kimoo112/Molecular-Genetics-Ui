import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../../widgets/background.dart';
import '../Notify/noti.dart';



DateTime scheduleTime = DateTime.now();

class Alarmscreenqubf extends StatefulWidget {
  const Alarmscreenqubf({super.key});

  @override
  State<Alarmscreenqubf> createState() => _AlarmscreenqubfState();
}

class _AlarmscreenqubfState extends State<Alarmscreenqubf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(elevation: 20,
        gradient: LinearGradient(colors: [
             Color.fromARGB(255, 2, 2, 44),
             Color.fromARGB(255, 0, 0, 134),

        ]),
        
        title:Text("QUIZ ",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold))
        
        ),

      body: Stack(
        children:[
                           AnimatingBg4(),

           Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children:[
            DatePickerTxt(),
                ScheduleBtn(),
          ]
          ),
        ),
        ]
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
            title: 'Pre-Quiz',
            body: 'Go To Pre-Quiz',
            id: 6,

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
        'Choose Your Time ',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
