import 'package:freezed_annotation/freezed_annotation.dart';

part 'aniversary_list_post_data.freezed.dart';
part 'aniversary_list_post_data.g.dart';

@freezed
class AniversaryListPostData with _$AniversaryListPostData {
  const factory AniversaryListPostData({
    @JsonKey(name: 'aniversaryName') required String aniversaryName,
    @JsonKey(name: 'aniversaryDate') required String aniversaryDate,
    @JsonKey(name: 'aniversaryMessage') required String aniversaryMessage,
  }) = _AniversaryListPostData;

  factory AniversaryListPostData.fromJson(Map<String, dynamic> json) =>
      _$AniversaryListPostDataFromJson(json);
}
