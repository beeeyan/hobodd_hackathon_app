// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserStateImpl _$$CreateUserStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserStateImpl(
      name: json['name'] as String? ?? '',
      roomName: json['roomName'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateUserStateImplToJson(
        _$CreateUserStateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'roomName': instance.roomName,
    };
