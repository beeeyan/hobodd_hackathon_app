import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../api/api_client/api_client.dart';
import '../../../../api/base_url.dart';
import '../../../../util/logger.dart';
import '../model/log.dart';

final logRepositoryProvider = Provider<LogRepositoryImpl>(
  (ref) => LogRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);

class LogRepositoryImpl {
  LogRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  Future<List<Log>> get({
    required String userId,
  }) async {
    final response = await apiClient.get(
      '$baseUrl/log/:user_id',
      queryParameters: <String, dynamic>{
        'user_id': userId,
      },
    );
    return response.when(
      success: (data) {
        final items = data.main['items'] as List;
        return items
            .map(
              (item) => Log.fromJson(item as Map<String, dynamic>),
            )
            .toList();
      },
      failure: (error) => throw Exception(error),
    );
  }

  Future<void> post({
    required int userId,
    required String clickedDate,
    String? status,
  }) async {
    final response = await apiClient.post(
      '$baseUrl/log',
      data: {
        'user_id': userId,
        'clicked_date': clickedDate,
        'status': status,
      },
    );
    response.when(
      success: (data) => logger.i('成功'),
      failure: (error) => throw Exception(error),
    );
  }
}
