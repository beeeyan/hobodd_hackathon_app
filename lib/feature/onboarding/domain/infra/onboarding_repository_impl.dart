import '../../../../api/api_client/api_client.dart';
import '../../../../api/base_url.dart';
import '../../../../util/logger.dart';
import '../model/onboarding_post_data.dart';
import '../repository/onboarding_repository.dart';

class OnboardingRepositoryImpl extends OnboardingRepository {
  OnboardingRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  @override
  Future<void> post({
    required OnboardingPostData data,
  }) async {
    final response = await apiClient.post(
      '$baseUrl/user',
      data: {
        'name': data.userName,
        'roomName': data.calenderName,
      },
    );
    response.when(
      success: (data) => logger.i('成功'),
      failure: (error) => logger.e('失敗'),
    );
  }
}
