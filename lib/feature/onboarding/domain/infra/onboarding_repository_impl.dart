import '../../../../api/api_client/api_client.dart';
import '../../../../util/logger.dart';
import '../model/create_user_post_data.dart';
import '../model/join_room_post_data.dart';
import '../repository/onboarding_repository.dart';

class OnboardingRepositoryImpl extends OnboardingRepository {
  OnboardingRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  @override
  Future<void> createUserPost({
    required CreateUserPostData data,
  }) async {
    final response = await apiClient.post(
      'https://hackathon_api.hirano-i.workers.dev/user',
      data: {
        'name': data.name,
        'roomName': data.roomName,
      },
    );
    response.when(
      success: (data) => logger.i('成功'),
      failure: (error) => logger.e('失敗'),
    );
  }

  @override
  Future<void> joinRoomPost({
    required JoinRoomPostData data,
  }) async {
    final response = await apiClient.post(
      'https://hackathon_api.hirano-i.workers.dev/user/room',
      data: {
        'name': data.name,
        'roomName': data.roomId,
      },
    );
    response.when(
      success: (data) => logger.i('成功'),
      failure: (error) => logger.e('失敗'),
    );
  }
}
