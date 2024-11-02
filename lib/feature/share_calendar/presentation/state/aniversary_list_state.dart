import 'package:freezed_annotation/freezed_annotation.dart';

part 'aniversary_list_state.freezed.dart';
part 'aniversary_list_state.g.dart';

@freezed
class AniversaryListState with _$AniversaryListState {
  const factory AniversaryListState({
    @Default('') String aniversaryName,
    @Default('') String aniversaryDate,
    @Default('') String aniversaryMessage,
  }) = _AniversaryListState;

  factory AniversaryListState.fromJson(Map<String, dynamic> json) =>
      _$AniversaryListStateFromJson(json);
}
