import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_room_post_data.freezed.dart';
part 'join_room_post_data.g.dart';

@freezed
class JoinRoomPostData with _$JoinRoomPostData {
  const factory JoinRoomPostData({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'roomId') required String roomId,
  }) = _JoinRoomPostData;

  factory JoinRoomPostData.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomPostDataFromJson(json);
}
