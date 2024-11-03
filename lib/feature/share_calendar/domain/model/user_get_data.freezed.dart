// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_get_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGetData _$UserGetDataFromJson(Map<String, dynamic> json) {
  return _UserGetData.fromJson(json);
}

/// @nodoc
mixin _$UserGetData {
  String get username => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get sticker => throw _privateConstructorUsedError;
  String get clickedAt => throw _privateConstructorUsedError;

  /// Serializes this UserGetData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGetDataCopyWith<UserGetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetDataCopyWith<$Res> {
  factory $UserGetDataCopyWith(
          UserGetData value, $Res Function(UserGetData) then) =
      _$UserGetDataCopyWithImpl<$Res, UserGetData>;
  @useResult
  $Res call(
      {String username, DateTime createdAt, String sticker, String clickedAt});
}

/// @nodoc
class _$UserGetDataCopyWithImpl<$Res, $Val extends UserGetData>
    implements $UserGetDataCopyWith<$Res> {
  _$UserGetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? createdAt = null,
    Object? sticker = null,
    Object? clickedAt = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as String,
      clickedAt: null == clickedAt
          ? _value.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGetDataImplCopyWith<$Res>
    implements $UserGetDataCopyWith<$Res> {
  factory _$$UserGetDataImplCopyWith(
          _$UserGetDataImpl value, $Res Function(_$UserGetDataImpl) then) =
      __$$UserGetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username, DateTime createdAt, String sticker, String clickedAt});
}

/// @nodoc
class __$$UserGetDataImplCopyWithImpl<$Res>
    extends _$UserGetDataCopyWithImpl<$Res, _$UserGetDataImpl>
    implements _$$UserGetDataImplCopyWith<$Res> {
  __$$UserGetDataImplCopyWithImpl(
      _$UserGetDataImpl _value, $Res Function(_$UserGetDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? createdAt = null,
    Object? sticker = null,
    Object? clickedAt = null,
  }) {
    return _then(_$UserGetDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as String,
      clickedAt: null == clickedAt
          ? _value.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGetDataImpl implements _UserGetData {
  const _$UserGetDataImpl(
      {required this.username,
      required this.createdAt,
      required this.sticker,
      required this.clickedAt});

  factory _$UserGetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGetDataImplFromJson(json);

  @override
  final String username;
  @override
  final DateTime createdAt;
  @override
  final String sticker;
  @override
  final String clickedAt;

  @override
  String toString() {
    return 'UserGetData(username: $username, createdAt: $createdAt, sticker: $sticker, clickedAt: $clickedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sticker, sticker) || other.sticker == sticker) &&
            (identical(other.clickedAt, clickedAt) ||
                other.clickedAt == clickedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, createdAt, sticker, clickedAt);

  /// Create a copy of UserGetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetDataImplCopyWith<_$UserGetDataImpl> get copyWith =>
      __$$UserGetDataImplCopyWithImpl<_$UserGetDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGetDataImplToJson(
      this,
    );
  }
}

abstract class _UserGetData implements UserGetData {
  const factory _UserGetData(
      {required final String username,
      required final DateTime createdAt,
      required final String sticker,
      required final String clickedAt}) = _$UserGetDataImpl;

  factory _UserGetData.fromJson(Map<String, dynamic> json) =
      _$UserGetDataImpl.fromJson;

  @override
  String get username;
  @override
  DateTime get createdAt;
  @override
  String get sticker;
  @override
  String get clickedAt;

  /// Create a copy of UserGetData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGetDataImplCopyWith<_$UserGetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
