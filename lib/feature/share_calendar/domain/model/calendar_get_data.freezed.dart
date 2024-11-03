// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_get_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarGetData _$CalendarGetDataFromJson(Map<String, dynamic> json) {
  return _CalendarGetData.fromJson(json);
}

/// @nodoc
mixin _$CalendarGetData {
  DateTime get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this CalendarGetData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarGetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarGetDataCopyWith<CalendarGetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarGetDataCopyWith<$Res> {
  factory $CalendarGetDataCopyWith(
          CalendarGetData value, $Res Function(CalendarGetData) then) =
      _$CalendarGetDataCopyWithImpl<$Res, CalendarGetData>;
  @useResult
  $Res call({DateTime date, String title, String message});
}

/// @nodoc
class _$CalendarGetDataCopyWithImpl<$Res, $Val extends CalendarGetData>
    implements $CalendarGetDataCopyWith<$Res> {
  _$CalendarGetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarGetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarGetDataImplCopyWith<$Res>
    implements $CalendarGetDataCopyWith<$Res> {
  factory _$$CalendarGetDataImplCopyWith(_$CalendarGetDataImpl value,
          $Res Function(_$CalendarGetDataImpl) then) =
      __$$CalendarGetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String title, String message});
}

/// @nodoc
class __$$CalendarGetDataImplCopyWithImpl<$Res>
    extends _$CalendarGetDataCopyWithImpl<$Res, _$CalendarGetDataImpl>
    implements _$$CalendarGetDataImplCopyWith<$Res> {
  __$$CalendarGetDataImplCopyWithImpl(
      _$CalendarGetDataImpl _value, $Res Function(_$CalendarGetDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarGetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$CalendarGetDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarGetDataImpl implements _CalendarGetData {
  const _$CalendarGetDataImpl(
      {required this.date, required this.title, required this.message});

  factory _$CalendarGetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarGetDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'CalendarGetData(date: $date, title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarGetDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, title, message);

  /// Create a copy of CalendarGetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarGetDataImplCopyWith<_$CalendarGetDataImpl> get copyWith =>
      __$$CalendarGetDataImplCopyWithImpl<_$CalendarGetDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarGetDataImplToJson(
      this,
    );
  }
}

abstract class _CalendarGetData implements CalendarGetData {
  const factory _CalendarGetData(
      {required final DateTime date,
      required final String title,
      required final String message}) = _$CalendarGetDataImpl;

  factory _CalendarGetData.fromJson(Map<String, dynamic> json) =
      _$CalendarGetDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get title;
  @override
  String get message;

  /// Create a copy of CalendarGetData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarGetDataImplCopyWith<_$CalendarGetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
