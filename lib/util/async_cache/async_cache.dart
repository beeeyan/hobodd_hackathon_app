import 'package:async/async.dart';

/// 非同期処理の多重実行防止のキャッシュ
final asyncCache = AsyncCache<dynamic>.ephemeral();
