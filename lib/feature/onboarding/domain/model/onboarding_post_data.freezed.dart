// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingPostData _$OnboardingPostDataFromJson(Map<String, dynamic> json) {
  return _OnboardingPostData.fromJson(json);
}

/// @nodoc
mixin _$OnboardingPostData {
  @JsonKey(name: 'name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomName')
  String get calenderName => throw _privateConstructorUsedError;

  /// Serializes this OnboardingPostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingPostDataCopyWith<OnboardingPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPostDataCopyWith<$Res> {
  factory $OnboardingPostDataCopyWith(
          OnboardingPostData value, $Res Function(OnboardingPostData) then) =
      _$OnboardingPostDataCopyWithImpl<$Res, OnboardingPostData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String userName,
      @JsonKey(name: 'roomName') String calenderName});
}

/// @nodoc
class _$OnboardingPostDataCopyWithImpl<$Res, $Val extends OnboardingPostData>
    implements $OnboardingPostDataCopyWith<$Res> {
  _$OnboardingPostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? calenderName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      calenderName: null == calenderName
          ? _value.calenderName
          : calenderName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingPostDataImplCopyWith<$Res>
    implements $OnboardingPostDataCopyWith<$Res> {
  factory _$$OnboardingPostDataImplCopyWith(_$OnboardingPostDataImpl value,
          $Res Function(_$OnboardingPostDataImpl) then) =
      __$$OnboardingPostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String userName,
      @JsonKey(name: 'roomName') String calenderName});
}

/// @nodoc
class __$$OnboardingPostDataImplCopyWithImpl<$Res>
    extends _$OnboardingPostDataCopyWithImpl<$Res, _$OnboardingPostDataImpl>
    implements _$$OnboardingPostDataImplCopyWith<$Res> {
  __$$OnboardingPostDataImplCopyWithImpl(_$OnboardingPostDataImpl _value,
      $Res Function(_$OnboardingPostDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? calenderName = null,
  }) {
    return _then(_$OnboardingPostDataImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      calenderName: null == calenderName
          ? _value.calenderName
          : calenderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingPostDataImpl implements _OnboardingPostData {
  const _$OnboardingPostDataImpl(
      {@JsonKey(name: 'name') required this.userName,
      @JsonKey(name: 'roomName') required this.calenderName});

  factory _$OnboardingPostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingPostDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String userName;
  @override
  @JsonKey(name: 'roomName')
  final String calenderName;

  @override
  String toString() {
    return 'OnboardingPostData(userName: $userName, calenderName: $calenderName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPostDataImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.calenderName, calenderName) ||
                other.calenderName == calenderName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userName, calenderName);

  /// Create a copy of OnboardingPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPostDataImplCopyWith<_$OnboardingPostDataImpl> get copyWith =>
      __$$OnboardingPostDataImplCopyWithImpl<_$OnboardingPostDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingPostDataImplToJson(
      this,
    );
  }
}

abstract class _OnboardingPostData implements OnboardingPostData {
  const factory _OnboardingPostData(
          {@JsonKey(name: 'name') required final String userName,
          @JsonKey(name: 'roomName') required final String calenderName}) =
      _$OnboardingPostDataImpl;

  factory _OnboardingPostData.fromJson(Map<String, dynamic> json) =
      _$OnboardingPostDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get userName;
  @override
  @JsonKey(name: 'roomName')
  String get calenderName;

  /// Create a copy of OnboardingPostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingPostDataImplCopyWith<_$OnboardingPostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
