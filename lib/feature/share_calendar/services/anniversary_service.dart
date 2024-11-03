import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/api_client/api_client.dart';
import '../../../util/shared_preferences/shared_preferences_repository.dart';
import '../domain/infra/anniversary_repository_impl.dart';
import '../domain/model/anniversary_post_data.dart';

final anniversaryServiceProvider = Provider<AnniversaryService>(
  (ref) => AnniversaryService(
    client: ref.watch(apiClientProvider),
    sharedPref: ref.watch(sharedPreferencesRepositoryProvider),
  ),
);

class AnniversaryService {
  AnniversaryService({
    required ApiClient client,
    required SharedPreferencesRepository sharedPref,
  })  : _client = client,
        _sharedPref = sharedPref;

  final ApiClient _client;
  final SharedPreferencesRepository _sharedPref;

  Future<List<AnniversaryPostData>> create({
    required String date,
    required String name,
    required String message,
  }) async {
    final roomId = await _sharedPref.fetch<String>(
      SharedPreferencesKey.roomId,
    );
    if (roomId == null) {
      throw Exception('roomId is null');
    }
    return AnniversaryRepositoryImpl(_client).post(
      roomId: roomId,
      date: date,
      name: name,
      message: message,
    );
  }
}
