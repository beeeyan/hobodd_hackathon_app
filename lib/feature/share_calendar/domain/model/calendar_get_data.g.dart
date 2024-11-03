// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_get_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarGetDataImpl _$$CalendarGetDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarGetDataImpl(
      date: DateTime.parse(json['date'] as String),
      title: json['title'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CalendarGetDataImplToJson(
        _$CalendarGetDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'title': instance.title,
      'message': instance.message,
    };
