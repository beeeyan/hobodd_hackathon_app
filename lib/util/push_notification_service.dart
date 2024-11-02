import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pushNotificationServiceProvider = Provider(
  (ref) => PushNotificationService(),
);

class PushNotificationService {
  final channel = const AndroidNotificationChannel(
    'channel',
    'Notifications',
    description: 'ハッカソンアプリのプッシュ通知チャネル',
    importance: Importance.high,
  );

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final messaging = FirebaseMessaging.instance;

  void initializePushNotifications({
    required Future<void> Function(RemoteMessage) handler,
  }) {
    // バックグラウンドメッセージングハンドラの設定
    FirebaseMessaging.onBackgroundMessage(handler);

    // Androidの通知チャネルを作成
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void _handleMessage({
    required RemoteMessage message,
    void Function()? callbackRouter,
  }) {
    if (callbackRouter != null) {
      callbackRouter();
    }
  }

  // Androidのみ、アプリを開いている場合にバナーを表示する
  Future<void> handleNotification({
    void Function()? callbackRouter,
  }) async {
    // アプリ終了状態で取得したプッシュ通知の取得
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    // アプリ終了状態で取得したプッシュ通知を表示
    if (initialMessage != null) {
      _handleMessage(
        message: initialMessage,
        callbackRouter: callbackRouter,
      );
    }

    // アプリがフォアグラウンド状態で取得したプッシュ通知を表示
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(
        message: message,
        callbackRouter: callbackRouter,
      );
    });

    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      final android = message.notification?.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: '@mipmap/ic_stat',
            ),
          ),
        );
      }
    });
  }

  // iOS用
  Future<void> requestPermission() async {
    await messaging.requestPermission();
  }

  // Tokenの取得
  Future<String?> getToken() async {
    return FirebaseMessaging.instance.getToken();
  }

  // 全体配信・Topicでsubscribeする。
  Future<void> subscribeToTopic() async {
    await messaging.subscribeToTopic('all');
  }
}
