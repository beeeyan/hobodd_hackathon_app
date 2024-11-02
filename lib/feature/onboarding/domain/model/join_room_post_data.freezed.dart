// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_room_post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinRoomPostData _$JoinRoomPostDataFromJson(Map<String, dynamic> json) {
  return _JoinRoomPostData.fromJson(json);
}

/// @nodoc
mixin _$JoinRoomPostData {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomId')
  String get roomId => throw _privateConstructorUsedError;

  /// Serializes this JoinRoomPostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRoomPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRoomPostDataCopyWith<JoinRoomPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRoomPostDataCopyWith<$Res> {
  factory $JoinRoomPostDataCopyWith(
          JoinRoomPostData value, $Res Function(JoinRoomPostData) then) =
      _$JoinRoomPostDataCopyWithImpl<$Res, JoinRoomPostData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'roomId') String roomId});
}

/// @nodoc
class _$JoinRoomPostDataCopyWithImpl<$Res, $Val extends JoinRoomPostData>
    implements $JoinRoomPostDataCopyWith<$Res> {
  _$JoinRoomPostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRoomPostData
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
abstract class _$$JoinRoomPostDataImplCopyWith<$Res>
    implements $JoinRoomPostDataCopyWith<$Res> {
  factory _$$JoinRoomPostDataImplCopyWith(_$JoinRoomPostDataImpl value,
          $Res Function(_$JoinRoomPostDataImpl) then) =
      __$$JoinRoomPostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'roomId') String roomId});
}

/// @nodoc
class __$$JoinRoomPostDataImplCopyWithImpl<$Res>
    extends _$JoinRoomPostDataCopyWithImpl<$Res, _$JoinRoomPostDataImpl>
    implements _$$JoinRoomPostDataImplCopyWith<$Res> {
  __$$JoinRoomPostDataImplCopyWithImpl(_$JoinRoomPostDataImpl _value,
      $Res Function(_$JoinRoomPostDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinRoomPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? roomId = null,
  }) {
    return _then(_$JoinRoomPostDataImpl(
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
class _$JoinRoomPostDataImpl implements _JoinRoomPostData {
  const _$JoinRoomPostDataImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'roomId') required this.roomId});

  factory _$JoinRoomPostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRoomPostDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'roomId')
  final String roomId;

  @override
  String toString() {
    return 'JoinRoomPostData(name: $name, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomPostDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, roomId);

  /// Create a copy of JoinRoomPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomPostDataImplCopyWith<_$JoinRoomPostDataImpl> get copyWith =>
      __$$JoinRoomPostDataImplCopyWithImpl<_$JoinRoomPostDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRoomPostDataImplToJson(
      this,
    );
  }
}

abstract class _JoinRoomPostData implements JoinRoomPostData {
  const factory _JoinRoomPostData(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'roomId') required final String roomId}) =
      _$JoinRoomPostDataImpl;

  factory _JoinRoomPostData.fromJson(Map<String, dynamic> json) =
      _$JoinRoomPostDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'roomId')
  String get roomId;

  /// Create a copy of JoinRoomPostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRoomPostDataImplCopyWith<_$JoinRoomPostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
