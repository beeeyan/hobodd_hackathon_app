// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserResponseData _$CreateUserResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateUserResponseData.fromJson(json);
}

/// @nodoc
mixin _$CreateUserResponseData {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String get roomId => throw _privateConstructorUsedError;

  /// Serializes this CreateUserResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserResponseDataCopyWith<CreateUserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserResponseDataCopyWith<$Res> {
  factory $CreateUserResponseDataCopyWith(CreateUserResponseData value,
          $Res Function(CreateUserResponseData) then) =
      _$CreateUserResponseDataCopyWithImpl<$Res, CreateUserResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'room_id') String roomId});
}

/// @nodoc
class _$CreateUserResponseDataCopyWithImpl<$Res,
        $Val extends CreateUserResponseData>
    implements $CreateUserResponseDataCopyWith<$Res> {
  _$CreateUserResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roomId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserResponseDataImplCopyWith<$Res>
    implements $CreateUserResponseDataCopyWith<$Res> {
  factory _$$CreateUserResponseDataImplCopyWith(
          _$CreateUserResponseDataImpl value,
          $Res Function(_$CreateUserResponseDataImpl) then) =
      __$$CreateUserResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'room_id') String roomId});
}

/// @nodoc
class __$$CreateUserResponseDataImplCopyWithImpl<$Res>
    extends _$CreateUserResponseDataCopyWithImpl<$Res,
        _$CreateUserResponseDataImpl>
    implements _$$CreateUserResponseDataImplCopyWith<$Res> {
  __$$CreateUserResponseDataImplCopyWithImpl(
      _$CreateUserResponseDataImpl _value,
      $Res Function(_$CreateUserResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roomId = null,
  }) {
    return _then(_$CreateUserResponseDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserResponseDataImpl implements _CreateUserResponseData {
  const _$CreateUserResponseDataImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'room_id') required this.roomId});

  factory _$CreateUserResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'room_id')
  final String roomId;

  @override
  String toString() {
    return 'CreateUserResponseData(userId: $userId, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserResponseDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, roomId);

  /// Create a copy of CreateUserResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserResponseDataImplCopyWith<_$CreateUserResponseDataImpl>
      get copyWith => __$$CreateUserResponseDataImplCopyWithImpl<
          _$CreateUserResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserResponseDataImplToJson(
      this,
    );
  }
}

abstract class _CreateUserResponseData implements CreateUserResponseData {
  const factory _CreateUserResponseData(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'room_id') required final String roomId}) =
      _$CreateUserResponseDataImpl;

  factory _CreateUserResponseData.fromJson(Map<String, dynamic> json) =
      _$CreateUserResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'room_id')
  String get roomId;

  /// Create a copy of CreateUserResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserResponseDataImplCopyWith<_$CreateUserResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
