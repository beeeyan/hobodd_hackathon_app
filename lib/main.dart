import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/firebase/dev/firebase_options.dart' as dev;
import 'config/firebase/prod/firebase_options.dart' as prod;
import 'config/theme/theme.dart';
import 'enum/flavor.dart';
import 'routing/go_router.dart';
import 'util/logger.dart';
import 'util/push_notification_service.dart';
import 'util/shared_preferences/shared_preferences_repository.dart';

// プッシュ通知バックグラウンドのHandler
// Flutter バージョン 3.3.0 以降の場合
// https://firebase.google.com/docs/cloud-messaging/flutter/receive?hl=ja#:~:text=%E3%81%A7%E3%81%8D%E3%81%BE%E3%81%9B%E3%82%93%EF%BC%89%E3%80%82-,Flutter%20%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3%203.3.0,-%E4%BB%A5%E9%99%8D%E3%82%92%E4%BD%BF%E7%94%A8
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  logger.i('Handling a background message: ${message.messageId}');
}

// プッシュ通知のサービス
final _pushNotifications = PushNotificationService();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    // firebaseの初期化
    Firebase.initializeApp(
      options: getFirebaseOptions(),
    ),
  ]);

  // Flavor を取得し Logging
  logger.i('FLAVOR : ${flavor.name}');

  final sharedPreferences = await SharedPreferences.getInstance();

  _pushNotifications.initializePushNotifications(
    handler: _firebaseMessagingBackgroundHandler,
  );

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesRepositoryProvider.overrideWithValue(
          SharedPreferencesRepository(sharedPreferences),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

FirebaseOptions getFirebaseOptions() {
  switch (flavor) {
    case Flavor.dev:
      return dev.DefaultFirebaseOptions.currentPlatform;
    case Flavor.prod:
      return prod.DefaultFirebaseOptions.currentPlatform;
  }
}


class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    useEffect(
      () {
        // プッシュ通知を取得する
        _pushNotifications.handleNotification(
          callbackRouter: () {
            // TODO(beeeyan): push通知を受け取って画面遷移させる
          },
        );

        Future.wait(
          [
            _pushNotifications.requestPermission().then(
              (value) {
                _pushNotifications.subscribeToTopic();
                _pushNotifications.getToken().then(
                      (token) => logger.i(
                        'push通信のトークン : $token',
                      ),
                    );
              },
            ),
          ],
        );
        return null;
      },
      const [],
    );

    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: lightTheme(),
          // アプリ内文字サイズを固定（本体設定の影響を受けない）
          builder: (context, child) =>
              MediaQuery.withNoTextScaling(child: child!),
          routerConfig: ref.watch(goRouterProvider),
        );
      },
    );
  }
}
