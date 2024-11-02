// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_room_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinRoomResponseData _$JoinRoomResponseDataFromJson(Map<String, dynamic> json) {
  return _JoinRoomResponseData.fromJson(json);
}

/// @nodoc
mixin _$JoinRoomResponseData {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this JoinRoomResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRoomResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRoomResponseDataCopyWith<JoinRoomResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRoomResponseDataCopyWith<$Res> {
  factory $JoinRoomResponseDataCopyWith(JoinRoomResponseData value,
          $Res Function(JoinRoomResponseData) then) =
      _$JoinRoomResponseDataCopyWithImpl<$Res, JoinRoomResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$JoinRoomResponseDataCopyWithImpl<$Res,
        $Val extends JoinRoomResponseData>
    implements $JoinRoomResponseDataCopyWith<$Res> {
  _$JoinRoomResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRoomResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinRoomResponseDataImplCopyWith<$Res>
    implements $JoinRoomResponseDataCopyWith<$Res> {
  factory _$$JoinRoomResponseDataImplCopyWith(_$JoinRoomResponseDataImpl value,
          $Res Function(_$JoinRoomResponseDataImpl) then) =
      __$$JoinRoomResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$JoinRoomResponseDataImplCopyWithImpl<$Res>
    extends _$JoinRoomResponseDataCopyWithImpl<$Res, _$JoinRoomResponseDataImpl>
    implements _$$JoinRoomResponseDataImplCopyWith<$Res> {
  __$$JoinRoomResponseDataImplCopyWithImpl(_$JoinRoomResponseDataImpl _value,
      $Res Function(_$JoinRoomResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinRoomResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$JoinRoomResponseDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinRoomResponseDataImpl implements _JoinRoomResponseData {
  const _$JoinRoomResponseDataImpl(
      {@JsonKey(name: 'user_id') required this.userId});

  factory _$JoinRoomResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRoomResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'JoinRoomResponseData(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomResponseDataImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of JoinRoomResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomResponseDataImplCopyWith<_$JoinRoomResponseDataImpl>
      get copyWith =>
          __$$JoinRoomResponseDataImplCopyWithImpl<_$JoinRoomResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRoomResponseDataImplToJson(
      this,
    );
  }
}

abstract class _JoinRoomResponseData implements JoinRoomResponseData {
  const factory _JoinRoomResponseData(
          {@JsonKey(name: 'user_id') required final String userId}) =
      _$JoinRoomResponseDataImpl;

  factory _JoinRoomResponseData.fromJson(Map<String, dynamic> json) =
      _$JoinRoomResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of JoinRoomResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRoomResponseDataImplCopyWith<_$JoinRoomResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
