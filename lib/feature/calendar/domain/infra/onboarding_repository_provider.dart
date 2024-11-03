import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../api/api_client/api_client.dart';
import '../../../onboarding/domain/repository/onboarding_repository.dart';

final onboardingRepositoryProvider = Provider<OnboardingRepository>(
  (ref) => OnboardingRepository(
    ref.watch(apiClientProvider),
  ),
);
