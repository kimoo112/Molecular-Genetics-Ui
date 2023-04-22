import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('flutter_logo');

    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {});

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await notificationsPlugin.initialize(initializationSettings,
    
    
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
  }

  notificationDetails() {
    return const NotificationDetails(
        android: AndroidNotificationDetails('channelId', 'channelName',
            importance: Importance.max),
        iOS: DarwinNotificationDetails());
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payLoad}) async {
    return notificationsPlugin.show(
        id, title, body, await notificationDetails());
  }

  Future scheduleNotification(
      {int id = 0,
      String? title,
      String? body,
      String? payLoad,
      required DateTime scheduledNotificationDateTime}) async {
    return notificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(
          scheduledNotificationDateTime,
          tz.local,
        ),
        await notificationDetails(),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
}


// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class Noti{
//   static get iOSInitialize => null;

//   static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
//     var androidInitialize = new AndroidInitializationSettings('mipmap/ic_launcher');
//     var iOSInitialize = new DarwinInitializationSettings();
//     var initializationsSettings = new InitializationSettings(android: androidInitialize,
//         iOS: iOSInitialize);
//     await flutterLocalNotificationsPlugin.initialize(initializationsSettings );
//   }

//   static Future showBigTextNotification({var id =0,required String title, required String body,
//     var payload, required FlutterLocalNotificationsPlugin fln
//   } ) async {
//     AndroidNotificationDetails androidPlatformChannelSpecifics =
//     new AndroidNotificationDetails(
//       'you_can_name_it_whatever1',
//       'channel_name',

//       playSound: true,
//       sound: RawResourceAndroidNotificationSound('notification'),
//       importance: Importance.max,
//       priority: Priority.high,
//     );

//     var not= NotificationDetails(android: androidPlatformChannelSpecifics,
//         iOS: DarwinNotificationDetails()
//     );
//     await fln.show(0, title, body,not );
//   }

// }
