import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/api_client/api_client.dart';
import '../../../util/shared_preferences/shared_preferences_repository.dart';
import '../../calendar/domain/infra/log_repository_impl.dart';
import '../../calendar/domain/model/log.dart';
import '../domain/infra/user_repository_impl.dart';
import '../domain/model/user_get_data.dart';

final userServiceProvider = Provider<UserService>(
  (ref) => UserService(
    client: ref.watch(apiClientProvider),
    sharedPref: ref.watch(sharedPreferencesRepositoryProvider),
  ),
);

class UserService {
  UserService({
    required ApiClient client,
    required SharedPreferencesRepository sharedPref,
  })  : _client = client,
        _sharedPref = sharedPref;

  final ApiClient _client;
  final SharedPreferencesRepository _sharedPref;

  Future<List<UserGetData>> fetchUsers() async {
    final userId = await _sharedPref.fetch<int>(
      SharedPreferencesKey.userId,
    );
    if (userId == null) {
      throw Exception('userId is null');
    }
    return UserRepositoryImpl(_client).get(roomId: userId.toString());
  }

  Future<List<Log>> fetchLogs({
    required String userId,
  }) async {
    return LogRepositoryImpl(_client).get(userId: userId);
  }
}
