import 'package:freezed_annotation/freezed_annotation.dart';

part 'anniversary_post_data.freezed.dart';
part 'anniversary_post_data.g.dart';

@freezed
class AnniversaryPostData with _$AnniversaryPostData {
  const factory AnniversaryPostData({
    required String roomId,
    required String name,
    required String message,
    required DateTime date,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
  }) = _AnniversaryPostData;

  factory AnniversaryPostData.fromJson(Map<String, dynamic> json) =>
      _$AnniversaryPostDataFromJson(json);
}
