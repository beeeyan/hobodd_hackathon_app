// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGetDataImpl _$$UserGetDataImplFromJson(Map<String, dynamic> json) =>
    _$UserGetDataImpl(
      username: json['username'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      sticker: json['sticker'] as String,
      clickedAt: json['clickedAt'] as String,
    );

Map<String, dynamic> _$$UserGetDataImplToJson(_$UserGetDataImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'createdAt': instance.createdAt.toIso8601String(),
      'sticker': instance.sticker,
      'clickedAt': instance.clickedAt,
    };
