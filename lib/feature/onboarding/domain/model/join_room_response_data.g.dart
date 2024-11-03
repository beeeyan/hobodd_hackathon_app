// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_room_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinRoomResponseDataImpl _$$JoinRoomResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinRoomResponseDataImpl(
      userId: (json['user_id'] as num).toInt(),
      roomName: json['room_name'] as String,
    );

Map<String, dynamic> _$$JoinRoomResponseDataImplToJson(
        _$JoinRoomResponseDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'room_name': instance.roomName,
    };
