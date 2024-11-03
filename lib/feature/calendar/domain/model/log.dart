import 'package:freezed_annotation/freezed_annotation.dart';

part 'log.freezed.dart';
part 'log.g.dart';

@freezed
class Log with _$Log {
  const factory Log({
    required String id,
    required DateTime clickedAt,
    required String userId,
    String? status,
    String? body,
    required DateTime createdAt,
  }) = _Log;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);
}
