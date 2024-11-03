import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_get_data.freezed.dart';
part 'calendar_get_data.g.dart';

@freezed
class CalendarGetData with _$CalendarGetData {
  const factory CalendarGetData({
    required DateTime date,
    required String title,
    required String message,
  }) = _CalendarGetData;

  factory CalendarGetData.fromJson(Map<String, dynamic> json) =>
      _$CalendarGetDataFromJson(json);
}
