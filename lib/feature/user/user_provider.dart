import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../util/shared_preferences/shared_preferences_repository.dart';
import 'state/user_state.dart';

final userProvider = FutureProvider.autoDispose((ref) async {
  final userId = await ref
      .watch(sharedPreferencesRepositoryProvider)
      .fetch<int>(SharedPreferencesKey.userId);
  if (userId == null) {
    throw Exception('userId is null');
  }
  final userName = await ref
      .watch(sharedPreferencesRepositoryProvider)
      .fetch<String>(SharedPreferencesKey.userName);
  if (userName == null) {
    throw Exception('userId is null');
  }
  final roomId = await ref
      .watch(sharedPreferencesRepositoryProvider)
      .fetch<String>(SharedPreferencesKey.roomId);

  final roomName = await ref
      .watch(sharedPreferencesRepositoryProvider)
      .fetch<String>(SharedPreferencesKey.roomName);

return UserState(
    userId: userId,
    name: userName,
    roomId: roomId,
    roomName: roomName,
  );
});
