// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aniversary_list_post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AniversaryListPostData _$AniversaryListPostDataFromJson(
    Map<String, dynamic> json) {
  return _AniversaryListPostData.fromJson(json);
}

/// @nodoc
mixin _$AniversaryListPostData {
  @JsonKey(name: 'aniversaryName')
  String get aniversaryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'aniversaryDate')
  String get aniversaryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'aniversaryMessage')
  String get aniversaryMessage => throw _privateConstructorUsedError;

  /// Serializes this AniversaryListPostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AniversaryListPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AniversaryListPostDataCopyWith<AniversaryListPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AniversaryListPostDataCopyWith<$Res> {
  factory $AniversaryListPostDataCopyWith(AniversaryListPostData value,
          $Res Function(AniversaryListPostData) then) =
      _$AniversaryListPostDataCopyWithImpl<$Res, AniversaryListPostData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'aniversaryName') String aniversaryName,
      @JsonKey(name: 'aniversaryDate') String aniversaryDate,
      @JsonKey(name: 'aniversaryMessage') String aniversaryMessage});
}

/// @nodoc
class _$AniversaryListPostDataCopyWithImpl<$Res,
        $Val extends AniversaryListPostData>
    implements $AniversaryListPostDataCopyWith<$Res> {
  _$AniversaryListPostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AniversaryListPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aniversaryName = null,
    Object? aniversaryDate = null,
    Object? aniversaryMessage = null,
  }) {
    return _then(_value.copyWith(
      aniversaryName: null == aniversaryName
          ? _value.aniversaryName
          : aniversaryName // ignore: cast_nullable_to_non_nullable
              as String,
      aniversaryDate: null == aniversaryDate
          ? _value.aniversaryDate
          : aniversaryDate // ignore: cast_nullable_to_non_nullable
              as String,
      aniversaryMessage: null == aniversaryMessage
          ? _value.aniversaryMessage
          : aniversaryMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AniversaryListPostDataImplCopyWith<$Res>
    implements $AniversaryListPostDataCopyWith<$Res> {
  factory _$$AniversaryListPostDataImplCopyWith(
          _$AniversaryListPostDataImpl value,
          $Res Function(_$AniversaryListPostDataImpl) then) =
      __$$AniversaryListPostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'aniversaryName') String aniversaryName,
      @JsonKey(name: 'aniversaryDate') String aniversaryDate,
      @JsonKey(name: 'aniversaryMessage') String aniversaryMessage});
}

/// @nodoc
class __$$AniversaryListPostDataImplCopyWithImpl<$Res>
    extends _$AniversaryListPostDataCopyWithImpl<$Res,
        _$AniversaryListPostDataImpl>
    implements _$$AniversaryListPostDataImplCopyWith<$Res> {
  __$$AniversaryListPostDataImplCopyWithImpl(
      _$AniversaryListPostDataImpl _value,
      $Res Function(_$AniversaryListPostDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AniversaryListPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aniversaryName = null,
    Object? aniversaryDate = null,
    Object? aniversaryMessage = null,
  }) {
    return _then(_$AniversaryListPostDataImpl(
      aniversaryName: null == aniversaryName
          ? _value.aniversaryName
          : aniversaryName // ignore: cast_nullable_to_non_nullable
              as String,
      aniversaryDate: null == aniversaryDate
          ? _value.aniversaryDate
          : aniversaryDate // ignore: cast_nullable_to_non_nullable
              as String,
      aniversaryMessage: null == aniversaryMessage
          ? _value.aniversaryMessage
          : aniversaryMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AniversaryListPostDataImpl implements _AniversaryListPostData {
  const _$AniversaryListPostDataImpl(
      {@JsonKey(name: 'aniversaryName') required this.aniversaryName,
      @JsonKey(name: 'aniversaryDate') required this.aniversaryDate,
      @JsonKey(name: 'aniversaryMessage') required this.aniversaryMessage});

  factory _$AniversaryListPostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AniversaryListPostDataImplFromJson(json);

  @override
  @JsonKey(name: 'aniversaryName')
  final String aniversaryName;
  @override
  @JsonKey(name: 'aniversaryDate')
  final String aniversaryDate;
  @override
  @JsonKey(name: 'aniversaryMessage')
  final String aniversaryMessage;

  @override
  String toString() {
    return 'AniversaryListPostData(aniversaryName: $aniversaryName, aniversaryDate: $aniversaryDate, aniversaryMessage: $aniversaryMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AniversaryListPostDataImpl &&
            (identical(other.aniversaryName, aniversaryName) ||
                other.aniversaryName == aniversaryName) &&
            (identical(other.aniversaryDate, aniversaryDate) ||
                other.aniversaryDate == aniversaryDate) &&
            (identical(other.aniversaryMessage, aniversaryMessage) ||
                other.aniversaryMessage == aniversaryMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, aniversaryName, aniversaryDate, aniversaryMessage);

  /// Create a copy of AniversaryListPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AniversaryListPostDataImplCopyWith<_$AniversaryListPostDataImpl>
      get copyWith => __$$AniversaryListPostDataImplCopyWithImpl<
          _$AniversaryListPostDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AniversaryListPostDataImplToJson(
      this,
    );
  }
}

abstract class _AniversaryListPostData implements AniversaryListPostData {
  const factory _AniversaryListPostData(
      {@JsonKey(name: 'aniversaryName') required final String aniversaryName,
      @JsonKey(name: 'aniversaryDate') required final String aniversaryDate,
      @JsonKey(name: 'aniversaryMessage')
      required final String aniversaryMessage}) = _$AniversaryListPostDataImpl;

  factory _AniversaryListPostData.fromJson(Map<String, dynamic> json) =
      _$AniversaryListPostDataImpl.fromJson;

  @override
  @JsonKey(name: 'aniversaryName')
  String get aniversaryName;
  @override
  @JsonKey(name: 'aniversaryDate')
  String get aniversaryDate;
  @override
  @JsonKey(name: 'aniversaryMessage')
  String get aniversaryMessage;

  /// Create a copy of AniversaryListPostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AniversaryListPostDataImplCopyWith<_$AniversaryListPostDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
