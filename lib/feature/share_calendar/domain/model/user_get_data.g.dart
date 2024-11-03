// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGetDataImpl _$$UserGetDataImplFromJson(Map<String, dynamic> json) =>
    _$UserGetDataImpl(
      userId: (json['userId'] as num).toInt(),
      username: json['username'] as String,
      sticker: json['sticker'] as String,
      clickedAt: json['clickedAt'] as String,
    );

Map<String, dynamic> _$$UserGetDataImplToJson(_$UserGetDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'sticker': instance.sticker,
      'clickedAt': instance.clickedAt,
    };
