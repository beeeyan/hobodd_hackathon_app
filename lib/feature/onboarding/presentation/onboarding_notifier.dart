import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/infra/onboarding_repository_provider.dart';
import '../domain/model/onboarding_post_data.dart';
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
    state = state.copyWith(name: userName ?? '');
  }

  void clearUserName() {
    userNameController.clear();
    state = state.copyWith(name: '');
  }

  void inputCalenderName(String? calenderName) {
    state = state.copyWith(roomName: calenderName ?? '');
  }

  void clearCalenderName() {
    calenderNameController.clear();
    state = state.copyWith(roomName: '');
  }

  Future<void> save() async {
    final data = OnboardingPostData(
      userName: state.name,
      calenderName: state.roomName,
    );
    await ref.read(onboardingRepositoryProvider).post(data: data);
  }
}
