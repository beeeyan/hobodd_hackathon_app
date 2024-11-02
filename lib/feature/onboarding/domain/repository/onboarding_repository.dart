import '../model/onboarding_post_data.dart';

abstract class OnboardingRepository {
  Future<void> post({
    required OnboardingPostData data,
  });
}
