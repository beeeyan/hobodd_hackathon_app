import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badge/flutter_app_badge.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/firebase/firebase_options.dart';
import 'config/theme.dart';
import 'routing/go_router.dart';
import 'util/app_life_cycle.dart';
import 'util/logger.dart';
import 'util/push_notification_service.dart';

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
      options: DefaultFirebaseOptions.currentPlatform,
    ),
  ]);

  // Flavor を取得し Logging
  // logger.i('FLAVOR : ${flavor.name}');

  // _pushNotifications.initializePushNotifications(
  //   handler: _firebaseMessagingBackgroundHandler,
  // );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリのライフサイクルイベントを監視
    ref.listen<AppLifecycleState>(appLifecycleProvider, (previous, next) {
      // foregroundになったときに通知バッジを削除
      if (next == AppLifecycleState.resumed) {
        FlutterAppBadge.count(-1);
      }
    });

    useEffect(
      () {
        // プッシュ通知の取得
        _pushNotifications.handleNotification(
          callbackRouter: () {
            // アプリ終了時（タスクキル状態）に取得したプッシュ通知の場合、
            // この時点ではまだcontextが発生しないため、直接Routerから画面遷移する。
            ref.watch(goRouterProvider).goNamed(
                  '', // TODO: 一覧画面へ遷移する
                );
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
