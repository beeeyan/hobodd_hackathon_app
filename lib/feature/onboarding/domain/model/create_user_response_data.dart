import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_response_data.freezed.dart';
part 'create_user_response_data.g.dart';

@freezed
class CreateUserResponseData with _$CreateUserResponseData {
  const factory CreateUserResponseData({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'room_id') required String roomId,
  }) = _CreateUserResponseData;

  factory CreateUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateUserResponseDataFromJson(json);
}
