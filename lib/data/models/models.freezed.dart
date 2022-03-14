// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call({required UserType type, required String horseName}) {
    return _UserData(
      type: type,
      horseName: horseName,
    );
  }

  UserData fromJson(Map<String, Object?> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  UserType get type => throw _privateConstructorUsedError;
  String get horseName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({UserType type, String horseName});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? horseName = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      horseName: horseName == freezed
          ? _value.horseName
          : horseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call({UserType type, String horseName});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object? type = freezed,
    Object? horseName = freezed,
  }) {
    return _then(_UserData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      horseName: horseName == freezed
          ? _value.horseName
          : horseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  _$_UserData({required this.type, required this.horseName});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final UserType type;
  @override
  final String horseName;

  @override
  String toString() {
    return 'UserData(type: $type, horseName: $horseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserData &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.horseName, horseName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(horseName));

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  factory _UserData({required UserType type, required String horseName}) =
      _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  UserType get type;
  @override
  String get horseName;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

StableWork _$StableWorkFromJson(Map<String, dynamic> json) {
  return _StableWork.fromJson(json);
}

/// @nodoc
class _$StableWorkTearOff {
  const _$StableWorkTearOff();

  _StableWork call(
      {required Days day, required String time, required String displayName}) {
    return _StableWork(
      day: day,
      time: time,
      displayName: displayName,
    );
  }

  StableWork fromJson(Map<String, Object?> json) {
    return StableWork.fromJson(json);
  }
}

/// @nodoc
const $StableWork = _$StableWorkTearOff();

/// @nodoc
mixin _$StableWork {
  Days get day => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StableWorkCopyWith<StableWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StableWorkCopyWith<$Res> {
  factory $StableWorkCopyWith(
          StableWork value, $Res Function(StableWork) then) =
      _$StableWorkCopyWithImpl<$Res>;
  $Res call({Days day, String time, String displayName});
}

/// @nodoc
class _$StableWorkCopyWithImpl<$Res> implements $StableWorkCopyWith<$Res> {
  _$StableWorkCopyWithImpl(this._value, this._then);

  final StableWork _value;
  // ignore: unused_field
  final $Res Function(StableWork) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StableWorkCopyWith<$Res> implements $StableWorkCopyWith<$Res> {
  factory _$StableWorkCopyWith(
          _StableWork value, $Res Function(_StableWork) then) =
      __$StableWorkCopyWithImpl<$Res>;
  @override
  $Res call({Days day, String time, String displayName});
}

/// @nodoc
class __$StableWorkCopyWithImpl<$Res> extends _$StableWorkCopyWithImpl<$Res>
    implements _$StableWorkCopyWith<$Res> {
  __$StableWorkCopyWithImpl(
      _StableWork _value, $Res Function(_StableWork) _then)
      : super(_value, (v) => _then(v as _StableWork));

  @override
  _StableWork get _value => super._value as _StableWork;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_StableWork(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StableWork implements _StableWork {
  _$_StableWork(
      {required this.day, required this.time, required this.displayName});

  factory _$_StableWork.fromJson(Map<String, dynamic> json) =>
      _$$_StableWorkFromJson(json);

  @override
  final Days day;
  @override
  final String time;
  @override
  final String displayName;

  @override
  String toString() {
    return 'StableWork(day: $day, time: $time, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StableWork &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(displayName));

  @JsonKey(ignore: true)
  @override
  _$StableWorkCopyWith<_StableWork> get copyWith =>
      __$StableWorkCopyWithImpl<_StableWork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StableWorkToJson(this);
  }
}

abstract class _StableWork implements StableWork {
  factory _StableWork(
      {required Days day,
      required String time,
      required String displayName}) = _$_StableWork;

  factory _StableWork.fromJson(Map<String, dynamic> json) =
      _$_StableWork.fromJson;

  @override
  Days get day;
  @override
  String get time;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$StableWorkCopyWith<_StableWork> get copyWith =>
      throw _privateConstructorUsedError;
}
