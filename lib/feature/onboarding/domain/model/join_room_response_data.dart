import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_room_response_data.freezed.dart';
part 'join_room_response_data.g.dart';

@freezed
class JoinRoomResponseData with _$JoinRoomResponseData {
  const factory JoinRoomResponseData({
    @JsonKey(name: 'user_id') required String userId,
  }) = _JoinRoomResponseData;

  factory JoinRoomResponseData.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomResponseDataFromJson(json);
}
