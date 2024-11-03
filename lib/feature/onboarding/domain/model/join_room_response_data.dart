import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_room_response_data.freezed.dart';
part 'join_room_response_data.g.dart';

@freezed
class JoinRoomResponseData with _$JoinRoomResponseData {
  const factory JoinRoomResponseData({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'room_name') required String roomName,
  }) = _JoinRoomResponseData;

  factory JoinRoomResponseData.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomResponseDataFromJson(json);
}
