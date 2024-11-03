import '../../../../api/api_client/api_client.dart';
import '../model/create_user_post_data.dart';
import '../model/create_user_response_data.dart';
import '../model/join_room_post_data.dart';
import '../model/join_room_response_data.dart';

class OnboardingRepository {
  OnboardingRepository(this.apiClient);

  final ApiClient apiClient;

  Future<CreateUserResponseData> createUserPost({
    required CreateUserPostData data,
  }) async {
    final response = await apiClient.post(
      'https://hackathon_api.hirano-i.workers.dev/user',
      data: {
        'name': data.name,
        'roomName': data.roomName,
      },
    );
    return response.when<CreateUserResponseData>(
      success: (data) => CreateUserResponseData.fromJson(data.main),
      failure: (error) => throw Exception('エラー$error'),
    );
  }

  Future<JoinRoomResponseData> joinRoomPost({
    required JoinRoomPostData data,
  }) async {
    final response = await apiClient.post(
      'https://hackathon_api.hirano-i.workers.dev/user/room',
      data: {
        'name': data.name,
        'roomId': data.roomId,
      },
    );
    return response.when<JoinRoomResponseData>(
      success: (data) => JoinRoomResponseData.fromJson(data.main),
      failure: (error) => throw Exception('エラー$error'),
    );
  }
}
