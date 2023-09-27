import 'package:flutter/material.dart';
import "package:flutter_local_notifications/flutter_local_notifications.dart";

class notifications {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings androidInitializationSettings =
      AndroidInitializationSettings(
          'flutter_logo');

  void initializeSettings() async {
    InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void showNotification(int id, String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      "channelID",
      "channelName",
      priority: Priority.max,
      importance: Importance.max,
      color: Colors.greenAccent,
      icon: "flutter_logo",
    );

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    flutterLocalNotificationsPlugin.show(1, title, body, notificationDetails);
  }

  void scheduledNotification(int id, String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      "channelId",
      "channelName",
      priority: Priority.max,
      importance: Importance.max,
    );

    NotificationDetails n =
        NotificationDetails(android: androidNotificationDetails);

    await flutterLocalNotificationsPlugin.periodicallyShow(
      id,
      title,
      body,
      RepeatInterval.everyMinute,
      n,
    );

    print('ScHEDULED BY NOW');
  }
}
