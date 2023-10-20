// ignore_for_file: unused_local_variable

// import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '../../widgets/background.dart';
import '../Notify/noti.dart';

DateTime scheduleTime = DateTime.now();

class Alarmscreen1 extends StatefulWidget {
  const Alarmscreen1({super.key});

  @override
  State<Alarmscreen1> createState() => _Alarmscreen1State();
}

class _Alarmscreen1State extends State<Alarmscreen1> {
  // int id = Uuid().v4().hashCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
          title: Text("Lesson 1 ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
      body: Stack(
        children: [
          AnimatingBg4(),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // ElevatedButton(
              //     onPressed: () {
              //       AwesomeNotifications()
              //           .requestPermissionToSendNotifications();
              //     },
              //     child: Text("request permisson")),
              // const SizedBox(height: 22),
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         int id = Uuid().v4().hashCode;
              //         AwesomeNotifications().createNotification(
              //           content: NotificationContent(
              //               id: id,
              //               channelKey: "karim",
              //               bigPicture: "assets/icons/anim.jpg",
              //               notificationLayout: NotificationLayout.BigPicture,
              //               title: "Hello",
              //               body:
              //                   "The sun slowly set over the horizon, streaks of pink."),
              //         );
              //         print("$id");
              //       });
              //     },
              //     child: Text("data")),
              // const SizedBox(height: 22),
              // ElevatedButton(
              //     onPressed: () {
              //       AwesomeNotifications().createNotification(
              //           content: NotificationContent(
              //               id: 10,
              //               channelKey: 'Karim_Channel',
              //               title: 'Simple Notification',
              //               body: 'Simple body',
              //               actionType: ActionType.Default));
              //     },
              //     child: Text("Basic Push")),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Elevated Button",
                ),
              ),
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
        // DatePicker.showDateTimePicker(
        //   context,
        //   showTitleActions: true,
        //   onChanged: (date) => scheduleTime = date,
        //   onConfirm: (date) {},
        // );
      },
      child: Text(
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
