// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStateImpl _$$UserStateImplFromJson(Map<String, dynamic> json) =>
    _$UserStateImpl(
      userId: json['userId'] as String,
      name: json['name'] as String? ?? '',
      roomId: json['roomId'] as String?,
      roomName: json['roomName'] as String?,
    );

Map<String, dynamic> _$$UserStateImplToJson(_$UserStateImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'roomId': instance.roomId,
      'roomName': instance.roomName,
    };
