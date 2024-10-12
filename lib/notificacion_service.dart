import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final _notifications = FlutterLocalNotificationsPlugin();

  static Future _notificationDetails(String image, String sound) async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        channelDescription: 'channel description',
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
        sound: RawResourceAndroidNotificationSound(sound),
        styleInformation: BigPictureStyleInformation(
          DrawableResourceAndroidBitmap(image),
        ),
      ),
    );
  }

  static Future showNotification({
    required String title,
    required String body,
    required String image,
    required String sound,
  }) async =>
      _notifications.show(
        0,
        title,
        body,
        await _notificationDetails(image, sound),
      );
}
