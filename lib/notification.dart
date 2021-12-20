import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:notification/utilities.dart';

Future<void> createPlatFoodNotifcation() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: "Abd0_Notifiy",
      title: "Wellcome Home Babe.",
      body: "We are all here .",
      bigPicture: 'asset://assets/me.jpeg',
      notificationLayout: NotificationLayout.BigPicture,
    ),
  );
}

Future<void> createWaterReminderNotification(
    NotificationWeekAndTime notificationSchedule) async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title: 'Add some water to your plant!',
      body: 'Water your plant regularly to keep it healthy.',
      notificationLayout: NotificationLayout.Default,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'MARK_DONE',
        label: 'Mark Done1',
      ),
      NotificationActionButton(
        key: 'Abd0',
        label: 'Mark Done',
      ),
    ],
    schedule: NotificationCalendar(
      weekday: notificationSchedule.dayOfTheWeek,
      hour: notificationSchedule.timeOfDay.hour,
      minute: notificationSchedule.timeOfDay.minute,
      second: 0,
      millisecond: 0,
    ),
  );
}

Future<void> cancelScheduledNotifications() async {
  await AwesomeNotifications().cancelAllSchedules();
}
