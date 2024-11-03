// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserState _$CreateUserStateFromJson(Map<String, dynamic> json) {
  return _CreateUserState.fromJson(json);
}

/// @nodoc
mixin _$CreateUserState {
  String get name => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;

  /// Serializes this CreateUserState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserStateCopyWith<CreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserStateCopyWith<$Res> {
  factory $CreateUserStateCopyWith(
          CreateUserState value, $Res Function(CreateUserState) then) =
      _$CreateUserStateCopyWithImpl<$Res, CreateUserState>;
  @useResult
  $Res call({String name, String roomName});
}

/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res, $Val extends CreateUserState>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? roomName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserStateImplCopyWith<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  factory _$$CreateUserStateImplCopyWith(_$CreateUserStateImpl value,
          $Res Function(_$CreateUserStateImpl) then) =
      __$$CreateUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String roomName});
}

/// @nodoc
class __$$CreateUserStateImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$CreateUserStateImpl>
    implements _$$CreateUserStateImplCopyWith<$Res> {
  __$$CreateUserStateImplCopyWithImpl(
      _$CreateUserStateImpl _value, $Res Function(_$CreateUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? roomName = null,
  }) {
    return _then(_$CreateUserStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserStateImpl implements _CreateUserState {
  const _$CreateUserStateImpl({this.name = '', this.roomName = ''});

  factory _$CreateUserStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserStateImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String roomName;

  @override
  String toString() {
    return 'CreateUserState(name: $name, roomName: $roomName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, roomName);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStateImplCopyWith<_$CreateUserStateImpl> get copyWith =>
      __$$CreateUserStateImplCopyWithImpl<_$CreateUserStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserStateImplToJson(
      this,
    );
  }
}

abstract class _CreateUserState implements CreateUserState {
  const factory _CreateUserState({final String name, final String roomName}) =
      _$CreateUserStateImpl;

  factory _CreateUserState.fromJson(Map<String, dynamic> json) =
      _$CreateUserStateImpl.fromJson;

  @override
  String get name;
  @override
  String get roomName;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserStateImplCopyWith<_$CreateUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
