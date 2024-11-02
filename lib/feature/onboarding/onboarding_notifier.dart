import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state/onboarding_state.dart';

final onboardingNotifierProvider =
    NotifierProvider.autoDispose<CalcBeltBendingRateNotifier, OnboardingState>(
  CalcBeltBendingRateNotifier.new,
);

class CalcBeltBendingRateNotifier extends AutoDisposeNotifier<OnboardingState> {
  final beltLengthController = TextEditingController();

  @override
  OnboardingState build() {
    return const OnboardingState(calenderName: '');
  }
}
