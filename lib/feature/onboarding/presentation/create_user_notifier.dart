import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/shared_preferences/shared_preferences_repository.dart';
import '../../calendar/domain/infra/onboarding_repository_provider.dart';
import '../domain/model/create_user_post_data.dart';
import 'state/create_user_state.dart';

final createUserNotifierProvider =
    NotifierProvider.autoDispose<OnboardingNotifier, CreateUserState>(
  OnboardingNotifier.new,
);

class OnboardingNotifier extends AutoDisposeNotifier<CreateUserState> {
  final userNameController = TextEditingController();
  final roomIdController = TextEditingController();

  SharedPreferencesRepository get sharedPreferencesRepository =>
      ref.read(sharedPreferencesRepositoryProvider);

  @override
  CreateUserState build() {
    return const CreateUserState();
  }

  void inputUserName(String? userName) {
    state = state.copyWith(name: userName ?? '');
  }

  void clearUserName() {
    userNameController.clear();
    state = state.copyWith(name: '');
  }

  void inputRoomName(String? roomName) {
    state = state.copyWith(roomName: roomName ?? '');
  }

  void clearRoomName() {
    roomIdController.clear();
    state = state.copyWith(roomName: '');
  }

  void inputRoomId(String? roomId) {
    state = state.copyWith(roomName: roomId ?? '');
  }

  void clearRoomId() {
    roomIdController.clear();
    state = state.copyWith(roomName: '');
  }

  Future<void> create() async {
    final data = CreateUserPostData(
      name: state.name,
      roomName: state.roomName,
    );
    final result =
        await ref.read(onboardingRepositoryProvider).createUserPost(data: data);

    await sharedPreferencesRepository.save<int>(
      SharedPreferencesKey.userId,
      result.userId,
    );

    await sharedPreferencesRepository.save<String>(
      SharedPreferencesKey.userName,
      state.name,
    );

    await sharedPreferencesRepository.save<String>(
      SharedPreferencesKey.roomId,
      result.roomId,
    );

    await sharedPreferencesRepository.save<String>(
      SharedPreferencesKey.userName,
      state.roomName,
    );
  }
}
