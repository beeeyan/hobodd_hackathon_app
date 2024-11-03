// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anniversary_post_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnniversaryPostDataImpl _$$AnniversaryPostDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AnniversaryPostDataImpl(
      roomId: json['roomId'] as String,
      name: json['name'] as String,
      message: json['message'] as String,
      date: DateTime.parse(json['date'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$AnniversaryPostDataImplToJson(
        _$AnniversaryPostDataImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'name': instance.name,
      'message': instance.message,
      'date': instance.date.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
