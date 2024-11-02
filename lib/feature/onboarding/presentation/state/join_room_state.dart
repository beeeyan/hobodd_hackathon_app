import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_room_state.freezed.dart';
part 'join_room_state.g.dart';

@freezed
class JoinRoomState with _$JoinRoomState {
  const factory JoinRoomState({
    @Default('') String name,
    @Default('') String roomId,
  }) = _JoinRoomState;

  factory JoinRoomState.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomStateFromJson(json);
}
