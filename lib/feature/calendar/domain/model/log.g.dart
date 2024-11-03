// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogImpl _$$LogImplFromJson(Map<String, dynamic> json) => _$LogImpl(
      id: json['id'] as String,
      clickedAt: DateTime.parse(json['clickedAt'] as String),
      userId: json['userId'] as String,
      status: json['status'] as String?,
      body: json['body'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$LogImplToJson(_$LogImpl instance) => <String, dynamic>{
      'id': instance.id,
      'clickedAt': instance.clickedAt.toIso8601String(),
      'userId': instance.userId,
      'status': instance.status,
      'body': instance.body,
      'createdAt': instance.createdAt.toIso8601String(),
    };
