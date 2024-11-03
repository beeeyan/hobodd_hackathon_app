import '../../../../api/api_client/api_client.dart';
import '../../../../api/base_url.dart';
import '../model/anniversary_post_data.dart';

class AnniversaryRepositoryImpl {
  AnniversaryRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  Future<List<AnniversaryPostData>> post({
    required String roomId,
    required String date,
    required String name,
    required String message,
  }) async {
    final response = await apiClient.post(
      '$baseUrl/anniversary',
      data: {
        'room_id': roomId,
        'date': date,
        'name': name,
        'message': message,
      },
    );
    return response.when(
      success: (data) {
        final items = data.main['items'] as List;
        return items
            .map(
              (item) => AnniversaryPostData.fromJson(
                item as Map<String, dynamic>,
              ),
            )
            .toList();
      },
      failure: (error) => throw Exception(error),
    );
  }

  Future<List<AnniversaryPostData>> put({
    required String roomId,
    required String date,
    required String name,
    required String message,
  }) async {
    final response = await apiClient.put(
      '$baseUrl/anniversary',
      data: {
        'room_id': roomId,
        'date': date,
        'name': name,
        'message': message,
      },
    );
    return response.when(
      success: (data) {
        final items = data.main['items'] as List;
        return items
            .map(
              (item) => AnniversaryPostData.fromJson(
                item as Map<String, dynamic>,
              ),
            )
            .toList();
      },
      failure: (error) => throw Exception(error),
    );
  }

  Future<List<AnniversaryPostData>> delete({
    required String roomId,
    required String date,
  }) async {
    final response = await apiClient.delete(
      '$baseUrl/anniversary',
      data: {
        'room_id': roomId,
        'date': date,
      },
    );
    return response.when(
      success: (data) {
        final items = data.main['items'] as List;
        return items
            .map(
              (item) => AnniversaryPostData.fromJson(
                item as Map<String, dynamic>,
              ),
            )
            .toList();
      },
      failure: (error) => throw Exception(error),
    );
  }
}
