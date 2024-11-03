import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/infra/onboarding_repository_provider.dart';
import '../domain/model/join_room_post_data.dart';
import 'state/join_room_state.dart';

final joinRoomNotifierProvider =
    NotifierProvider.autoDispose<OnboardingNotifier, JoinRoomState>(
  OnboardingNotifier.new,
);

class OnboardingNotifier extends AutoDisposeNotifier<JoinRoomState> {
  final userNameController = TextEditingController();
  final roomIdController = TextEditingController();

  @override
  JoinRoomState build() {
    return const JoinRoomState();
  }

  void inputUserName(String? userName) {
    state = state.copyWith(name: userName ?? '');
  }

  void clearUserName() {
    userNameController.clear();
    state = state.copyWith(name: '');
  }

  void inputRoomName(String? roomName) {
    state = state.copyWith(roomId: roomName ?? '');
  }

  void clearRoomName() {
    roomIdController.clear();
    state = state.copyWith(roomId: '');
  }

  void inputRoomId(String? roomId) {
    state = state.copyWith(roomId: roomId ?? '');
  }

  void clearRoomId() {
    roomIdController.clear();
    state = state.copyWith(roomId: '');
  }

  Future<void> join() async {
    final data = JoinRoomPostData(
      name: state.name,
      roomId: state.roomId,
    );
    await ref.read(onboardingRepositoryProvider).joinRoomPost(data: data);
  }
}
