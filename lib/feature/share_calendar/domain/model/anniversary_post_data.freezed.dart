// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anniversary_post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnniversaryPostData _$AnniversaryPostDataFromJson(Map<String, dynamic> json) {
  return _AnniversaryPostData.fromJson(json);
}

/// @nodoc
mixin _$AnniversaryPostData {
  String get roomId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this AnniversaryPostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnniversaryPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnniversaryPostDataCopyWith<AnniversaryPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnniversaryPostDataCopyWith<$Res> {
  factory $AnniversaryPostDataCopyWith(
          AnniversaryPostData value, $Res Function(AnniversaryPostData) then) =
      _$AnniversaryPostDataCopyWithImpl<$Res, AnniversaryPostData>;
  @useResult
  $Res call(
      {String roomId,
      String name,
      String message,
      DateTime date,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$AnniversaryPostDataCopyWithImpl<$Res, $Val extends AnniversaryPostData>
    implements $AnniversaryPostDataCopyWith<$Res> {
  _$AnniversaryPostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnniversaryPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? name = null,
    Object? message = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnniversaryPostDataImplCopyWith<$Res>
    implements $AnniversaryPostDataCopyWith<$Res> {
  factory _$$AnniversaryPostDataImplCopyWith(_$AnniversaryPostDataImpl value,
          $Res Function(_$AnniversaryPostDataImpl) then) =
      __$$AnniversaryPostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomId,
      String name,
      String message,
      DateTime date,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$AnniversaryPostDataImplCopyWithImpl<$Res>
    extends _$AnniversaryPostDataCopyWithImpl<$Res, _$AnniversaryPostDataImpl>
    implements _$$AnniversaryPostDataImplCopyWith<$Res> {
  __$$AnniversaryPostDataImplCopyWithImpl(_$AnniversaryPostDataImpl _value,
      $Res Function(_$AnniversaryPostDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnniversaryPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? name = null,
    Object? message = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AnniversaryPostDataImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnniversaryPostDataImpl implements _AnniversaryPostData {
  const _$AnniversaryPostDataImpl(
      {required this.roomId,
      required this.name,
      required this.message,
      required this.date,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt});

  factory _$AnniversaryPostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnniversaryPostDataImplFromJson(json);

  @override
  final String roomId;
  @override
  final String name;
  @override
  final String message;
  @override
  final DateTime date;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'AnniversaryPostData(roomId: $roomId, name: $name, message: $message, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnniversaryPostDataImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, name, message, date,
      createdAt, updatedAt, deletedAt);

  /// Create a copy of AnniversaryPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnniversaryPostDataImplCopyWith<_$AnniversaryPostDataImpl> get copyWith =>
      __$$AnniversaryPostDataImplCopyWithImpl<_$AnniversaryPostDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnniversaryPostDataImplToJson(
      this,
    );
  }
}

abstract class _AnniversaryPostData implements AnniversaryPostData {
  const factory _AnniversaryPostData(
      {required final String roomId,
      required final String name,
      required final String message,
      required final DateTime date,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? deletedAt}) = _$AnniversaryPostDataImpl;

  factory _AnniversaryPostData.fromJson(Map<String, dynamic> json) =
      _$AnniversaryPostDataImpl.fromJson;

  @override
  String get roomId;
  @override
  String get name;
  @override
  String get message;
  @override
  DateTime get date;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deletedAt;

  /// Create a copy of AnniversaryPostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnniversaryPostDataImplCopyWith<_$AnniversaryPostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}