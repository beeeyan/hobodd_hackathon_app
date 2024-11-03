import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../api/api_client/api_client.dart';
import '../../../../api/base_url.dart';
import '../model/user_get_data.dart';

final userRepositoryProvider = Provider<UserRepositoryImpl>(
  (ref) => UserRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);

class UserRepositoryImpl {
  UserRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  Future<List<UserGetData>> get({
    required String roomId,
  }) async {
    final response = await apiClient.get(
      '$baseUrl/user/$roomId',
    );
    return response.when(
      success: (data) {
        final items = data.main['items'] as List;
        return items
            .map(
              (item) => UserGetData.fromJson(item as Map<String, dynamic>),
            )
            .toList();
      },
      failure: (error) => throw Exception(error),
    );
  }
}
