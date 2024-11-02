// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseData _$BaseResponseDataFromJson(Map<String, dynamic> json) {
  return _BaseResponseData.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseData {
  Map<String, dynamic> get main => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseDataCopyWith<BaseResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseDataCopyWith<$Res> {
  factory $BaseResponseDataCopyWith(
          BaseResponseData value, $Res Function(BaseResponseData) then) =
      _$BaseResponseDataCopyWithImpl<$Res, BaseResponseData>;
  @useResult
  $Res call({Map<String, dynamic> main});
}

/// @nodoc
class _$BaseResponseDataCopyWithImpl<$Res, $Val extends BaseResponseData>
    implements $BaseResponseDataCopyWith<$Res> {
  _$BaseResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseDataImplCopyWith<$Res>
    implements $BaseResponseDataCopyWith<$Res> {
  factory _$$BaseResponseDataImplCopyWith(_$BaseResponseDataImpl value,
          $Res Function(_$BaseResponseDataImpl) then) =
      __$$BaseResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> main});
}

/// @nodoc
class __$$BaseResponseDataImplCopyWithImpl<$Res>
    extends _$BaseResponseDataCopyWithImpl<$Res, _$BaseResponseDataImpl>
    implements _$$BaseResponseDataImplCopyWith<$Res> {
  __$$BaseResponseDataImplCopyWithImpl(_$BaseResponseDataImpl _value,
      $Res Function(_$BaseResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
  }) {
    return _then(_$BaseResponseDataImpl(
      main: null == main
          ? _value._main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseDataImpl implements _BaseResponseData {
  const _$BaseResponseDataImpl({final Map<String, dynamic> main = emptyMap})
      : _main = main;

  factory _$BaseResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseDataImplFromJson(json);

  final Map<String, dynamic> _main;
  @override
  @JsonKey()
  Map<String, dynamic> get main {
    if (_main is EqualUnmodifiableMapView) return _main;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_main);
  }

  @override
  String toString() {
    return 'BaseResponseData(main: $main)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseDataImpl &&
            const DeepCollectionEquality().equals(other._main, _main));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_main));

  /// Create a copy of BaseResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseDataImplCopyWith<_$BaseResponseDataImpl> get copyWith =>
      __$$BaseResponseDataImplCopyWithImpl<_$BaseResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseDataImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseData implements BaseResponseData {
  const factory _BaseResponseData({final Map<String, dynamic> main}) =
      _$BaseResponseDataImpl;

  factory _BaseResponseData.fromJson(Map<String, dynamic> json) =
      _$BaseResponseDataImpl.fromJson;

  @override
  Map<String, dynamic> get main;

  /// Create a copy of BaseResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseDataImplCopyWith<_$BaseResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
