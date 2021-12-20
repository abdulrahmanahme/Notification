import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notification/home_page.dart';
import 'package:notification/notification.dart';
import 'package:notification/plant_page.dart';
import 'package:notification/sconend_page.dart';

void main() {
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: "Abd0_Notifiy",
      channelName: "Basic Notification",
      defaultColor: Colors.teal,
      importance: NotificationImportance.High,
      channelShowBadge: true,
    ),
    NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        defaultColor: Colors.teal,
        locked: true,
        importance: NotificationImportance.High,
        channelShowBadge: true,
        soundSource: 'resource://raw/res_fingerlicking'),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Notification',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.tealAccent,
        ),
        home: HomePage());
  }
}
