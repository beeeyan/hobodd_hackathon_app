import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../api/api_client/api_client.dart';
import '../repository/onboarding_repository.dart';
import 'onboarding_repository_impl.dart';

final onboardingRepositoryProvider = Provider<OnboardingRepository>(
  (ref) => OnboardingRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
