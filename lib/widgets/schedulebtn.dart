import 'package:flutter/material.dart';

import '../screens/Alarms/alarmScreen.dart';
import '../screens/Notify/noti.dart';

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
        'THE KIMO NOTIFY',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        debugPrint('Notification Scheduled for $scheduleTime');
        NotificationService().scheduleNotification(
            title: 'THE KIMO NOTIFY',
            body: 'Karim App Notifications',
            scheduledNotificationDateTime: scheduleTime);
      },
    );
  }
}
