import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_post_data.freezed.dart';
part 'create_user_post_data.g.dart';

@freezed
class CreateUserPostData with _$CreateUserPostData {
  const factory CreateUserPostData({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'roomName') required String roomName,
  }) = _CreateUserPostData;

  factory CreateUserPostData.fromJson(Map<String, dynamic> json) =>
      _$CreateUserPostDataFromJson(json);
}
