// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Log _$LogFromJson(Map<String, dynamic> json) {
  return _Log.fromJson(json);
}

/// @nodoc
mixin _$Log {
  String get id => throw _privateConstructorUsedError;
  DateTime get clickedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Log to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogCopyWith<Log> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogCopyWith<$Res> {
  factory $LogCopyWith(Log value, $Res Function(Log) then) =
      _$LogCopyWithImpl<$Res, Log>;
  @useResult
  $Res call(
      {String id,
      DateTime clickedAt,
      String userId,
      String? status,
      String? body,
      DateTime createdAt});
}

/// @nodoc
class _$LogCopyWithImpl<$Res, $Val extends Log> implements $LogCopyWith<$Res> {
  _$LogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clickedAt = null,
    Object? userId = null,
    Object? status = freezed,
    Object? body = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clickedAt: null == clickedAt
          ? _value.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogImplCopyWith<$Res> implements $LogCopyWith<$Res> {
  factory _$$LogImplCopyWith(_$LogImpl value, $Res Function(_$LogImpl) then) =
      __$$LogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime clickedAt,
      String userId,
      String? status,
      String? body,
      DateTime createdAt});
}

/// @nodoc
class __$$LogImplCopyWithImpl<$Res> extends _$LogCopyWithImpl<$Res, _$LogImpl>
    implements _$$LogImplCopyWith<$Res> {
  __$$LogImplCopyWithImpl(_$LogImpl _value, $Res Function(_$LogImpl) _then)
      : super(_value, _then);

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clickedAt = null,
    Object? userId = null,
    Object? status = freezed,
    Object? body = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$LogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clickedAt: null == clickedAt
          ? _value.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogImpl implements _Log {
  const _$LogImpl(
      {required this.id,
      required this.clickedAt,
      required this.userId,
      this.status,
      this.body,
      required this.createdAt});

  factory _$LogImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime clickedAt;
  @override
  final String userId;
  @override
  final String? status;
  @override
  final String? body;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Log(id: $id, clickedAt: $clickedAt, userId: $userId, status: $status, body: $body, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clickedAt, clickedAt) ||
                other.clickedAt == clickedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, clickedAt, userId, status, body, createdAt);

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogImplCopyWith<_$LogImpl> get copyWith =>
      __$$LogImplCopyWithImpl<_$LogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogImplToJson(
      this,
    );
  }
}

abstract class _Log implements Log {
  const factory _Log(
      {required final String id,
      required final DateTime clickedAt,
      required final String userId,
      final String? status,
      final String? body,
      required final DateTime createdAt}) = _$LogImpl;

  factory _Log.fromJson(Map<String, dynamic> json) = _$LogImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get clickedAt;
  @override
  String get userId;
  @override
  String? get status;
  @override
  String? get body;
  @override
  DateTime get createdAt;

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogImplCopyWith<_$LogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
