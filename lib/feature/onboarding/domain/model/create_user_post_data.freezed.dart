// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserPostData _$CreateUserPostDataFromJson(Map<String, dynamic> json) {
  return _CreateUserPostData.fromJson(json);
}

/// @nodoc
mixin _$CreateUserPostData {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomName')
  String get roomName => throw _privateConstructorUsedError;

  /// Serializes this CreateUserPostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserPostDataCopyWith<CreateUserPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserPostDataCopyWith<$Res> {
  factory $CreateUserPostDataCopyWith(
          CreateUserPostData value, $Res Function(CreateUserPostData) then) =
      _$CreateUserPostDataCopyWithImpl<$Res, CreateUserPostData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'roomName') String roomName});
}

/// @nodoc
class _$CreateUserPostDataCopyWithImpl<$Res, $Val extends CreateUserPostData>
    implements $CreateUserPostDataCopyWith<$Res> {
  _$CreateUserPostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserPostData
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
abstract class _$$CreateUserPostDataImplCopyWith<$Res>
    implements $CreateUserPostDataCopyWith<$Res> {
  factory _$$CreateUserPostDataImplCopyWith(_$CreateUserPostDataImpl value,
          $Res Function(_$CreateUserPostDataImpl) then) =
      __$$CreateUserPostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'roomName') String roomName});
}

/// @nodoc
class __$$CreateUserPostDataImplCopyWithImpl<$Res>
    extends _$CreateUserPostDataCopyWithImpl<$Res, _$CreateUserPostDataImpl>
    implements _$$CreateUserPostDataImplCopyWith<$Res> {
  __$$CreateUserPostDataImplCopyWithImpl(_$CreateUserPostDataImpl _value,
      $Res Function(_$CreateUserPostDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? roomName = null,
  }) {
    return _then(_$CreateUserPostDataImpl(
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
class _$CreateUserPostDataImpl implements _CreateUserPostData {
  const _$CreateUserPostDataImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'roomName') required this.roomName});

  factory _$CreateUserPostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserPostDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'roomName')
  final String roomName;

  @override
  String toString() {
    return 'CreateUserPostData(name: $name, roomName: $roomName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserPostDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, roomName);

  /// Create a copy of CreateUserPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserPostDataImplCopyWith<_$CreateUserPostDataImpl> get copyWith =>
      __$$CreateUserPostDataImplCopyWithImpl<_$CreateUserPostDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserPostDataImplToJson(
      this,
    );
  }
}

abstract class _CreateUserPostData implements CreateUserPostData {
  const factory _CreateUserPostData(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'roomName') required final String roomName}) =
      _$CreateUserPostDataImpl;

  factory _CreateUserPostData.fromJson(Map<String, dynamic> json) =
      _$CreateUserPostDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'roomName')
  String get roomName;

  /// Create a copy of CreateUserPostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserPostDataImplCopyWith<_$CreateUserPostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
