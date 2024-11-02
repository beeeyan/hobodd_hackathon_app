// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aniversary_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AniversaryListState _$AniversaryListStateFromJson(Map<String, dynamic> json) {
  return _AniversaryListState.fromJson(json);
}

/// @nodoc
mixin _$AniversaryListState {
  String get aniversaryName => throw _privateConstructorUsedError;
  String get aniversaryDate => throw _privateConstructorUsedError;
  String get aniversaryMessage => throw _privateConstructorUsedError;

  /// Serializes this AniversaryListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AniversaryListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AniversaryListStateCopyWith<AniversaryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AniversaryListStateCopyWith<$Res> {
  factory $AniversaryListStateCopyWith(
          AniversaryListState value, $Res Function(AniversaryListState) then) =
      _$AniversaryListStateCopyWithImpl<$Res, AniversaryListState>;
  @useResult
  $Res call(
      {String aniversaryName, String aniversaryDate, String aniversaryMessage});
}

/// @nodoc
class _$AniversaryListStateCopyWithImpl<$Res, $Val extends AniversaryListState>
    implements $AniversaryListStateCopyWith<$Res> {
  _$AniversaryListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AniversaryListState
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
abstract class _$$AniversaryListStateImplCopyWith<$Res>
    implements $AniversaryListStateCopyWith<$Res> {
  factory _$$AniversaryListStateImplCopyWith(_$AniversaryListStateImpl value,
          $Res Function(_$AniversaryListStateImpl) then) =
      __$$AniversaryListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String aniversaryName, String aniversaryDate, String aniversaryMessage});
}

/// @nodoc
class __$$AniversaryListStateImplCopyWithImpl<$Res>
    extends _$AniversaryListStateCopyWithImpl<$Res, _$AniversaryListStateImpl>
    implements _$$AniversaryListStateImplCopyWith<$Res> {
  __$$AniversaryListStateImplCopyWithImpl(_$AniversaryListStateImpl _value,
      $Res Function(_$AniversaryListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AniversaryListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aniversaryName = null,
    Object? aniversaryDate = null,
    Object? aniversaryMessage = null,
  }) {
    return _then(_$AniversaryListStateImpl(
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
class _$AniversaryListStateImpl implements _AniversaryListState {
  const _$AniversaryListStateImpl(
      {this.aniversaryName = '',
      this.aniversaryDate = '',
      this.aniversaryMessage = ''});

  factory _$AniversaryListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AniversaryListStateImplFromJson(json);

  @override
  @JsonKey()
  final String aniversaryName;
  @override
  @JsonKey()
  final String aniversaryDate;
  @override
  @JsonKey()
  final String aniversaryMessage;

  @override
  String toString() {
    return 'AniversaryListState(aniversaryName: $aniversaryName, aniversaryDate: $aniversaryDate, aniversaryMessage: $aniversaryMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AniversaryListStateImpl &&
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

  /// Create a copy of AniversaryListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AniversaryListStateImplCopyWith<_$AniversaryListStateImpl> get copyWith =>
      __$$AniversaryListStateImplCopyWithImpl<_$AniversaryListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AniversaryListStateImplToJson(
      this,
    );
  }
}

abstract class _AniversaryListState implements AniversaryListState {
  const factory _AniversaryListState(
      {final String aniversaryName,
      final String aniversaryDate,
      final String aniversaryMessage}) = _$AniversaryListStateImpl;

  factory _AniversaryListState.fromJson(Map<String, dynamic> json) =
      _$AniversaryListStateImpl.fromJson;

  @override
  String get aniversaryName;
  @override
  String get aniversaryDate;
  @override
  String get aniversaryMessage;

  /// Create a copy of AniversaryListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AniversaryListStateImplCopyWith<_$AniversaryListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
