import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/firebase/dev/firebase_options.dart' as dev;
import 'config/firebase/prod/firebase_options.dart' as prod;
import 'config/theme/theme.dart';
import 'enum/flavor.dart';
import 'routing/go_router.dart';
import 'util/logger.dart';
import 'util/shared_preferences/shared_preferences_repository.dart';


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


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
