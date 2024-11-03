import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../api/api_client/api_client.dart';
import '../../../../api/base_url.dart';
import '../model/calendar_get_data.dart';

final calendarRepositoryProvider = Provider<CalendarRepositoryImpl>(
  (ref) => CalendarRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);

class CalendarRepositoryImpl {
  CalendarRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  Future<List<CalendarGetData>> get({
    String? roomId,
    required DateTime lastClickedDate,
  }) async {
    final response = await apiClient.get(
      '$baseUrl/calendar',
      queryParameters: <String, dynamic>{
        'room_id': roomId,
        'last_clicked_date': lastClickedDate,
      },
    );
    return response.when(
      success: (data) {
        final items = data.main['items'] as List;
        return items
            .map(
              (item) => CalendarGetData.fromJson(item as Map<String, dynamic>),
            )
            .toList();
      },
      failure: (error) => throw Exception(error),
    );
  }
}
