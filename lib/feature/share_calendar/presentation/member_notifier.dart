import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../calendar/domain/model/log.dart';
import '../services/user_service.dart';

final memberProvider =
    FutureProvider.autoDispose.family<List<Log>, String>((ref, arg) async {
  return ref.watch(userServiceProvider).fetchLogs(userId: arg);
});
