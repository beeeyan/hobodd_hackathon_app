// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinRoomState _$JoinRoomStateFromJson(Map<String, dynamic> json) {
  return _JoinRoomState.fromJson(json);
}

/// @nodoc
mixin _$JoinRoomState {
  String get name => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;

  /// Serializes this JoinRoomState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRoomStateCopyWith<JoinRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRoomStateCopyWith<$Res> {
  factory $JoinRoomStateCopyWith(
          JoinRoomState value, $Res Function(JoinRoomState) then) =
      _$JoinRoomStateCopyWithImpl<$Res, JoinRoomState>;
  @useResult
  $Res call({String name, String roomId});
}

/// @nodoc
class _$JoinRoomStateCopyWithImpl<$Res, $Val extends JoinRoomState>
    implements $JoinRoomStateCopyWith<$Res> {
  _$JoinRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? roomId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinRoomStateImplCopyWith<$Res>
    implements $JoinRoomStateCopyWith<$Res> {
  factory _$$JoinRoomStateImplCopyWith(
          _$JoinRoomStateImpl value, $Res Function(_$JoinRoomStateImpl) then) =
      __$$JoinRoomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String roomId});
}

/// @nodoc
class __$$JoinRoomStateImplCopyWithImpl<$Res>
    extends _$JoinRoomStateCopyWithImpl<$Res, _$JoinRoomStateImpl>
    implements _$$JoinRoomStateImplCopyWith<$Res> {
  __$$JoinRoomStateImplCopyWithImpl(
      _$JoinRoomStateImpl _value, $Res Function(_$JoinRoomStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinRoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? roomId = null,
  }) {
    return _then(_$JoinRoomStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$JoinRoomStateImpl implements _JoinRoomState {
  const _$JoinRoomStateImpl({this.name = '', this.roomId = ''});

  factory _$JoinRoomStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRoomStateImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String roomId;

  @override
  String toString() {
    return 'JoinRoomState(name: $name, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, roomId);

  /// Create a copy of JoinRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomStateImplCopyWith<_$JoinRoomStateImpl> get copyWith =>
      __$$JoinRoomStateImplCopyWithImpl<_$JoinRoomStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRoomStateImplToJson(
      this,
    );
  }
}

abstract class _JoinRoomState implements JoinRoomState {
  const factory _JoinRoomState({final String name, final String roomId}) =
      _$JoinRoomStateImpl;

  factory _JoinRoomState.fromJson(Map<String, dynamic> json) =
      _$JoinRoomStateImpl.fromJson;

  @override
  String get name;
  @override
  String get roomId;

  /// Create a copy of JoinRoomState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRoomStateImplCopyWith<_$JoinRoomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
