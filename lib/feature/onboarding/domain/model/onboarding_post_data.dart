import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_post_data.freezed.dart';
part 'onboarding_post_data.g.dart';

@freezed
class OnboardingPostData with _$OnboardingPostData {
  const factory OnboardingPostData({
    @JsonKey(name: 'name') required String userName,
    @JsonKey(name: 'roomName') required String calenderName,
  }) = _OnboardingPostData;

  factory OnboardingPostData.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPostDataFromJson(json);
}
