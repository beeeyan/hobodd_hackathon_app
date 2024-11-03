import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/model/user_get_data.dart';
import '../services/user_service.dart';

final memberListProvider =
    FutureProvider.autoDispose<List<UserGetData>>((ref) async {
  return ref.watch(userServiceProvider).fetchUsers();
});
