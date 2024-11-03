import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/aniversary_list_post_data.dart';
import 'state/aniversary_list_state.dart';

final aniversaryListNotifierProvider =
    NotifierProvider.autoDispose<AniversaryListNotifier, AniversaryListState>(
  AniversaryListNotifier.new,
);

class AniversaryListNotifier extends AutoDisposeNotifier<AniversaryListState> {
  final aniversaryNameController = TextEditingController();
  final aniversaryDateController = TextEditingController();
  final aniversaryMessageController = TextEditingController();

  @override
  AniversaryListState build() {
    return const AniversaryListState();
  }

  void inputAniversaryName(String? aniversaryName) {
    state = state.copyWith(aniversaryName: aniversaryName ?? '');
  }

  void inputAniversaryDate(String? aniversaryDate) {
    state = state.copyWith(aniversaryDate: aniversaryDate ?? '');
  }

  void inputAniversaryMessage(String? aniversaryMessage) {
    state = state.copyWith(aniversaryMessage: aniversaryMessage ?? '');
  }

  Future<void> save() async {
    final data = AniversaryListPostData(
      aniversaryName: state.aniversaryName,
      aniversaryDate: state.aniversaryDate,
      aniversaryMessage: state.aniversaryMessage,
    );
    // TODO(hott3): Repositoryの実装が必要
    // await ref.read(aniversaryRepositoryProvider).post(data: data);
  }
}
