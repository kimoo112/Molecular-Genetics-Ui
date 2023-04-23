import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'alarmScreen.dart';
import 'background.dart';
import 'noti.dart';

DateTime scheduleTime = DateTime.now();

class Alarmscreen1 extends StatefulWidget {
  const Alarmscreen1({super.key});

  @override
  State<Alarmscreen1> createState() => _Alarmscreen1State();
}

class _Alarmscreen1State extends State<Alarmscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(elevation: 20,
        gradient: LinearGradient(colors: [
             Color.fromARGB(255, 2, 2, 44),
             Color.fromARGB(255, 0, 0, 134),

        ]),
        title:Text("Lesson 1 ",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold))
        ),

      body: Stack(
        children: [
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
            title: 'Lesson 1',
            body: 'Go To Lesson 1',
            id: 1,

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


















// class ScheduleBtn extends StatefulWidget {
//   const ScheduleBtn({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _ScheduleBtnState createState() => _ScheduleBtnState();
// }

// class _ScheduleBtnState extends State<ScheduleBtn> {
//   late TextEditingController _textController;
//   DateTime? _scheduleTime;

//   @override
//   void initState() {
//     super.initState();
//     _textController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           controller: _textController,
//           decoration: InputDecoration(
//             labelText: 'Enter scheduled date and time (yyyy-MM-dd HH:mm:ss)',
//           ),
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter a date and time';
//             }
//             try {
//               _scheduleTime = DateTime.parse(value);
//             } catch (e) {
//               return 'Please enter a valid date and time';
//             }
//             return null;
//           },
//         ),
//         ElevatedButton(
//           style: ButtonStyle(
//             backgroundColor:
//                 MaterialStateProperty.all<Color>(Colors.amber),
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//             ),
//           ),
//           child: const Text(
//             'Schedule Notification',
//             style: TextStyle(fontSize: 20),
//           ),
//           onPressed: () {
//             if (_textController.text.isEmpty) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('Please enter a date and time'),
//                 ),
//               );
//               return;
//             }
//             if (_scheduleTime == null) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('Please enter a valid date and time'),
//                 ),
//               );
//               return;
//             }
//             debugPrint('Notification Scheduled for $_scheduleTime');
//             NotificationService().scheduleNotification(
//               title: 'THE KIMO NOTIFY',
//               body: 'Karim App Notifications',
//               scheduledNotificationDateTime: _scheduleTime!,
//             );
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                 content: Text('Notification Scheduled'),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
