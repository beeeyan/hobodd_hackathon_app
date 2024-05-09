import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'enum/flavor.dart';
import 'gen/fonts.gen.dart';
import 'routing/go_router.dart';
import 'util/logger.dart';

void main() {
  // Flavor を取得し Logging
  logger.i('FLAVOR : ${flavor.name}');

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: FontFamily.notoSansJP,
      ),
      // アプリ内文字サイズを固定（本体設定の影響を受けない）
      builder: (context, child) => MediaQuery.withNoTextScaling(child: child!),
      routerConfig: ref.watch(goRouterProvider),
    );
  }
}
