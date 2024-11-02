// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserResponseDataImpl _$$CreateUserResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserResponseDataImpl(
      userId: json['user_id'] as String,
      roomId: json['room_id'] as String,
    );

Map<String, dynamic> _$$CreateUserResponseDataImplToJson(
        _$CreateUserResponseDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'room_id': instance.roomId,
    };
