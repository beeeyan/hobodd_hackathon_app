import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state/onboarding_state.dart';

final onboardingNotifierProvider =
    NotifierProvider.autoDispose<OnboardingNotifier, OnboardingState>(
  OnboardingNotifier.new,
);

class OnboardingNotifier extends AutoDisposeNotifier<OnboardingState> {
  final userNameController = TextEditingController();
  final calenderNameController = TextEditingController();

  @override
  OnboardingState build() {
    return const OnboardingState();
  }

  void inputUserName(String? userName) {
    state = state.copyWith(userName: userName ?? '');
  }

  void clearUserName() {
    userNameController.clear();
    state = state.copyWith(userName: '');
  }

  void inputCalenderName(String? calenderName) {
    state = state.copyWith(calenderName: calenderName ?? '');
  }

  void clearCalenderName() {
    calenderNameController.clear();
    state = state.copyWith(calenderName: '');
  }
}
