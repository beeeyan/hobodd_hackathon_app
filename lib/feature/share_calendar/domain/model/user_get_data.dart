import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_get_data.freezed.dart';
part 'user_get_data.g.dart';

@freezed
class UserGetData with _$UserGetData {
  const factory UserGetData({
    required String userId,
    required String username,
    required DateTime createdAt,
    required String sticker,
    required String clickedAt,
  }) = _UserGetData;

  factory UserGetData.fromJson(Map<String, dynamic> json) =>
      _$UserGetDataFromJson(json);
}
