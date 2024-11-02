import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_state.freezed.dart';
part 'create_user_state.g.dart';

@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState({
    @Default('') String name,
    @Default('') String roomName,
  }) = _CreateUserState;

  factory CreateUserState.fromJson(Map<String, dynamic> json) =>
      _$CreateUserStateFromJson(json);
}
