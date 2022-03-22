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

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UserType type,
      required String userId,
      required String firstname,
      required String lastname,
      String? phoneNumber,
      String? email,
      String? stablesId,
      Map<String, Horse>? horses}) {
    return _User(
      type: type,
      userId: userId,
      firstname: firstname,
      lastname: lastname,
      phoneNumber: phoneNumber,
      email: email,
      stablesId: stablesId,
      horses: horses,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UserType get type => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get stablesId => throw _privateConstructorUsedError;
  Map<String, Horse>? get horses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UserType type,
      String userId,
      String firstname,
      String lastname,
      String? phoneNumber,
      String? email,
      String? stablesId,
      Map<String, Horse>? horses});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? userId = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? stablesId = freezed,
    Object? horses = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      stablesId: stablesId == freezed
          ? _value.stablesId
          : stablesId // ignore: cast_nullable_to_non_nullable
              as String?,
      horses: horses == freezed
          ? _value.horses
          : horses // ignore: cast_nullable_to_non_nullable
              as Map<String, Horse>?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserType type,
      String userId,
      String firstname,
      String lastname,
      String? phoneNumber,
      String? email,
      String? stablesId,
      Map<String, Horse>? horses});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? type = freezed,
    Object? userId = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? stablesId = freezed,
    Object? horses = freezed,
  }) {
    return _then(_User(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      stablesId: stablesId == freezed
          ? _value.stablesId
          : stablesId // ignore: cast_nullable_to_non_nullable
              as String?,
      horses: horses == freezed
          ? _value.horses
          : horses // ignore: cast_nullable_to_non_nullable
              as Map<String, Horse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.type,
      required this.userId,
      required this.firstname,
      required this.lastname,
      this.phoneNumber,
      this.email,
      this.stablesId,
      this.horses});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final UserType type;
  @override
  final String userId;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? stablesId;
  @override
  final Map<String, Horse>? horses;

  @override
  String toString() {
    return 'User(type: $type, userId: $userId, firstname: $firstname, lastname: $lastname, phoneNumber: $phoneNumber, email: $email, stablesId: $stablesId, horses: $horses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.stablesId, stablesId) &&
            const DeepCollectionEquality().equals(other.horses, horses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(stablesId),
      const DeepCollectionEquality().hash(horses));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required UserType type,
      required String userId,
      required String firstname,
      required String lastname,
      String? phoneNumber,
      String? email,
      String? stablesId,
      Map<String, Horse>? horses}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  UserType get type;
  @override
  String get userId;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  String? get stablesId;
  @override
  Map<String, Horse>? get horses;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Horse _$HorseFromJson(Map<String, dynamic> json) {
  return _Horse.fromJson(json);
}

/// @nodoc
class _$HorseTearOff {
  const _$HorseTearOff();

  _Horse call(
      {required String id,
      required String ownerId,
      required String name,
      String? stablesId,
      required List<String>? extraRiders,
      required HorseConfiguration horseSetup,
      Map<String, TemporaryHorseSetup>? temporarySetup}) {
    return _Horse(
      id: id,
      ownerId: ownerId,
      name: name,
      stablesId: stablesId,
      extraRiders: extraRiders,
      horseSetup: horseSetup,
      temporarySetup: temporarySetup,
    );
  }

  Horse fromJson(Map<String, Object?> json) {
    return Horse.fromJson(json);
  }
}

/// @nodoc
const $Horse = _$HorseTearOff();

/// @nodoc
mixin _$Horse {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get stablesId => throw _privateConstructorUsedError;
  List<String>? get extraRiders => throw _privateConstructorUsedError;
  HorseConfiguration get horseSetup => throw _privateConstructorUsedError;
  Map<String, TemporaryHorseSetup>? get temporarySetup =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HorseCopyWith<Horse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HorseCopyWith<$Res> {
  factory $HorseCopyWith(Horse value, $Res Function(Horse) then) =
      _$HorseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String ownerId,
      String name,
      String? stablesId,
      List<String>? extraRiders,
      HorseConfiguration horseSetup,
      Map<String, TemporaryHorseSetup>? temporarySetup});

  $HorseConfigurationCopyWith<$Res> get horseSetup;
}

/// @nodoc
class _$HorseCopyWithImpl<$Res> implements $HorseCopyWith<$Res> {
  _$HorseCopyWithImpl(this._value, this._then);

  final Horse _value;
  // ignore: unused_field
  final $Res Function(Horse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? stablesId = freezed,
    Object? extraRiders = freezed,
    Object? horseSetup = freezed,
    Object? temporarySetup = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stablesId: stablesId == freezed
          ? _value.stablesId
          : stablesId // ignore: cast_nullable_to_non_nullable
              as String?,
      extraRiders: extraRiders == freezed
          ? _value.extraRiders
          : extraRiders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      horseSetup: horseSetup == freezed
          ? _value.horseSetup
          : horseSetup // ignore: cast_nullable_to_non_nullable
              as HorseConfiguration,
      temporarySetup: temporarySetup == freezed
          ? _value.temporarySetup
          : temporarySetup // ignore: cast_nullable_to_non_nullable
              as Map<String, TemporaryHorseSetup>?,
    ));
  }

  @override
  $HorseConfigurationCopyWith<$Res> get horseSetup {
    return $HorseConfigurationCopyWith<$Res>(_value.horseSetup, (value) {
      return _then(_value.copyWith(horseSetup: value));
    });
  }
}

/// @nodoc
abstract class _$HorseCopyWith<$Res> implements $HorseCopyWith<$Res> {
  factory _$HorseCopyWith(_Horse value, $Res Function(_Horse) then) =
      __$HorseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String ownerId,
      String name,
      String? stablesId,
      List<String>? extraRiders,
      HorseConfiguration horseSetup,
      Map<String, TemporaryHorseSetup>? temporarySetup});

  @override
  $HorseConfigurationCopyWith<$Res> get horseSetup;
}

/// @nodoc
class __$HorseCopyWithImpl<$Res> extends _$HorseCopyWithImpl<$Res>
    implements _$HorseCopyWith<$Res> {
  __$HorseCopyWithImpl(_Horse _value, $Res Function(_Horse) _then)
      : super(_value, (v) => _then(v as _Horse));

  @override
  _Horse get _value => super._value as _Horse;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
    Object? stablesId = freezed,
    Object? extraRiders = freezed,
    Object? horseSetup = freezed,
    Object? temporarySetup = freezed,
  }) {
    return _then(_Horse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stablesId: stablesId == freezed
          ? _value.stablesId
          : stablesId // ignore: cast_nullable_to_non_nullable
              as String?,
      extraRiders: extraRiders == freezed
          ? _value.extraRiders
          : extraRiders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      horseSetup: horseSetup == freezed
          ? _value.horseSetup
          : horseSetup // ignore: cast_nullable_to_non_nullable
              as HorseConfiguration,
      temporarySetup: temporarySetup == freezed
          ? _value.temporarySetup
          : temporarySetup // ignore: cast_nullable_to_non_nullable
              as Map<String, TemporaryHorseSetup>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Horse implements _Horse {
  _$_Horse(
      {required this.id,
      required this.ownerId,
      required this.name,
      this.stablesId,
      required this.extraRiders,
      required this.horseSetup,
      this.temporarySetup});

  factory _$_Horse.fromJson(Map<String, dynamic> json) =>
      _$$_HorseFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String name;
  @override
  final String? stablesId;
  @override
  final List<String>? extraRiders;
  @override
  final HorseConfiguration horseSetup;
  @override
  final Map<String, TemporaryHorseSetup>? temporarySetup;

  @override
  String toString() {
    return 'Horse(id: $id, ownerId: $ownerId, name: $name, stablesId: $stablesId, extraRiders: $extraRiders, horseSetup: $horseSetup, temporarySetup: $temporarySetup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Horse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.stablesId, stablesId) &&
            const DeepCollectionEquality()
                .equals(other.extraRiders, extraRiders) &&
            const DeepCollectionEquality()
                .equals(other.horseSetup, horseSetup) &&
            const DeepCollectionEquality()
                .equals(other.temporarySetup, temporarySetup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(stablesId),
      const DeepCollectionEquality().hash(extraRiders),
      const DeepCollectionEquality().hash(horseSetup),
      const DeepCollectionEquality().hash(temporarySetup));

  @JsonKey(ignore: true)
  @override
  _$HorseCopyWith<_Horse> get copyWith =>
      __$HorseCopyWithImpl<_Horse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HorseToJson(this);
  }
}

abstract class _Horse implements Horse {
  factory _Horse(
      {required String id,
      required String ownerId,
      required String name,
      String? stablesId,
      required List<String>? extraRiders,
      required HorseConfiguration horseSetup,
      Map<String, TemporaryHorseSetup>? temporarySetup}) = _$_Horse;

  factory _Horse.fromJson(Map<String, dynamic> json) = _$_Horse.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  String get name;
  @override
  String? get stablesId;
  @override
  List<String>? get extraRiders;
  @override
  HorseConfiguration get horseSetup;
  @override
  Map<String, TemporaryHorseSetup>? get temporarySetup;
  @override
  @JsonKey(ignore: true)
  _$HorseCopyWith<_Horse> get copyWith => throw _privateConstructorUsedError;
}

TemporaryHorseSetup _$TemporaryHorseSetupFromJson(Map<String, dynamic> json) {
  return _TemporaryHorseSetup.fromJson(json);
}

/// @nodoc
class _$TemporaryHorseSetupTearOff {
  const _$TemporaryHorseSetupTearOff();

  _TemporaryHorseSetup call(
      {required DateTime timeStamp,
      required HorseSetup? insideSetup,
      required HorseSetup? outsideSetup,
      bool feed = true,
      bool keepInside = false,
      bool noFood = false,
      bool preformStabeling = true,
      bool preformTurnOut = true}) {
    return _TemporaryHorseSetup(
      timeStamp: timeStamp,
      insideSetup: insideSetup,
      outsideSetup: outsideSetup,
      feed: feed,
      keepInside: keepInside,
      noFood: noFood,
      preformStabeling: preformStabeling,
      preformTurnOut: preformTurnOut,
    );
  }

  TemporaryHorseSetup fromJson(Map<String, Object?> json) {
    return TemporaryHorseSetup.fromJson(json);
  }
}

/// @nodoc
const $TemporaryHorseSetup = _$TemporaryHorseSetupTearOff();

/// @nodoc
mixin _$TemporaryHorseSetup {
  DateTime get timeStamp => throw _privateConstructorUsedError;
  HorseSetup? get insideSetup => throw _privateConstructorUsedError;
  HorseSetup? get outsideSetup => throw _privateConstructorUsedError;
  bool get feed => throw _privateConstructorUsedError;
  bool get keepInside => throw _privateConstructorUsedError;
  bool get noFood => throw _privateConstructorUsedError;
  bool get preformStabeling => throw _privateConstructorUsedError;
  bool get preformTurnOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemporaryHorseSetupCopyWith<TemporaryHorseSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemporaryHorseSetupCopyWith<$Res> {
  factory $TemporaryHorseSetupCopyWith(
          TemporaryHorseSetup value, $Res Function(TemporaryHorseSetup) then) =
      _$TemporaryHorseSetupCopyWithImpl<$Res>;
  $Res call(
      {DateTime timeStamp,
      HorseSetup? insideSetup,
      HorseSetup? outsideSetup,
      bool feed,
      bool keepInside,
      bool noFood,
      bool preformStabeling,
      bool preformTurnOut});

  $HorseSetupCopyWith<$Res>? get insideSetup;
  $HorseSetupCopyWith<$Res>? get outsideSetup;
}

/// @nodoc
class _$TemporaryHorseSetupCopyWithImpl<$Res>
    implements $TemporaryHorseSetupCopyWith<$Res> {
  _$TemporaryHorseSetupCopyWithImpl(this._value, this._then);

  final TemporaryHorseSetup _value;
  // ignore: unused_field
  final $Res Function(TemporaryHorseSetup) _then;

  @override
  $Res call({
    Object? timeStamp = freezed,
    Object? insideSetup = freezed,
    Object? outsideSetup = freezed,
    Object? feed = freezed,
    Object? keepInside = freezed,
    Object? noFood = freezed,
    Object? preformStabeling = freezed,
    Object? preformTurnOut = freezed,
  }) {
    return _then(_value.copyWith(
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      insideSetup: insideSetup == freezed
          ? _value.insideSetup
          : insideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup?,
      outsideSetup: outsideSetup == freezed
          ? _value.outsideSetup
          : outsideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup?,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as bool,
      keepInside: keepInside == freezed
          ? _value.keepInside
          : keepInside // ignore: cast_nullable_to_non_nullable
              as bool,
      noFood: noFood == freezed
          ? _value.noFood
          : noFood // ignore: cast_nullable_to_non_nullable
              as bool,
      preformStabeling: preformStabeling == freezed
          ? _value.preformStabeling
          : preformStabeling // ignore: cast_nullable_to_non_nullable
              as bool,
      preformTurnOut: preformTurnOut == freezed
          ? _value.preformTurnOut
          : preformTurnOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $HorseSetupCopyWith<$Res>? get insideSetup {
    if (_value.insideSetup == null) {
      return null;
    }

    return $HorseSetupCopyWith<$Res>(_value.insideSetup!, (value) {
      return _then(_value.copyWith(insideSetup: value));
    });
  }

  @override
  $HorseSetupCopyWith<$Res>? get outsideSetup {
    if (_value.outsideSetup == null) {
      return null;
    }

    return $HorseSetupCopyWith<$Res>(_value.outsideSetup!, (value) {
      return _then(_value.copyWith(outsideSetup: value));
    });
  }
}

/// @nodoc
abstract class _$TemporaryHorseSetupCopyWith<$Res>
    implements $TemporaryHorseSetupCopyWith<$Res> {
  factory _$TemporaryHorseSetupCopyWith(_TemporaryHorseSetup value,
          $Res Function(_TemporaryHorseSetup) then) =
      __$TemporaryHorseSetupCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime timeStamp,
      HorseSetup? insideSetup,
      HorseSetup? outsideSetup,
      bool feed,
      bool keepInside,
      bool noFood,
      bool preformStabeling,
      bool preformTurnOut});

  @override
  $HorseSetupCopyWith<$Res>? get insideSetup;
  @override
  $HorseSetupCopyWith<$Res>? get outsideSetup;
}

/// @nodoc
class __$TemporaryHorseSetupCopyWithImpl<$Res>
    extends _$TemporaryHorseSetupCopyWithImpl<$Res>
    implements _$TemporaryHorseSetupCopyWith<$Res> {
  __$TemporaryHorseSetupCopyWithImpl(
      _TemporaryHorseSetup _value, $Res Function(_TemporaryHorseSetup) _then)
      : super(_value, (v) => _then(v as _TemporaryHorseSetup));

  @override
  _TemporaryHorseSetup get _value => super._value as _TemporaryHorseSetup;

  @override
  $Res call({
    Object? timeStamp = freezed,
    Object? insideSetup = freezed,
    Object? outsideSetup = freezed,
    Object? feed = freezed,
    Object? keepInside = freezed,
    Object? noFood = freezed,
    Object? preformStabeling = freezed,
    Object? preformTurnOut = freezed,
  }) {
    return _then(_TemporaryHorseSetup(
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      insideSetup: insideSetup == freezed
          ? _value.insideSetup
          : insideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup?,
      outsideSetup: outsideSetup == freezed
          ? _value.outsideSetup
          : outsideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup?,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as bool,
      keepInside: keepInside == freezed
          ? _value.keepInside
          : keepInside // ignore: cast_nullable_to_non_nullable
              as bool,
      noFood: noFood == freezed
          ? _value.noFood
          : noFood // ignore: cast_nullable_to_non_nullable
              as bool,
      preformStabeling: preformStabeling == freezed
          ? _value.preformStabeling
          : preformStabeling // ignore: cast_nullable_to_non_nullable
              as bool,
      preformTurnOut: preformTurnOut == freezed
          ? _value.preformTurnOut
          : preformTurnOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TemporaryHorseSetup implements _TemporaryHorseSetup {
  _$_TemporaryHorseSetup(
      {required this.timeStamp,
      required this.insideSetup,
      required this.outsideSetup,
      this.feed = true,
      this.keepInside = false,
      this.noFood = false,
      this.preformStabeling = true,
      this.preformTurnOut = true});

  factory _$_TemporaryHorseSetup.fromJson(Map<String, dynamic> json) =>
      _$$_TemporaryHorseSetupFromJson(json);

  @override
  final DateTime timeStamp;
  @override
  final HorseSetup? insideSetup;
  @override
  final HorseSetup? outsideSetup;
  @JsonKey()
  @override
  final bool feed;
  @JsonKey()
  @override
  final bool keepInside;
  @JsonKey()
  @override
  final bool noFood;
  @JsonKey()
  @override
  final bool preformStabeling;
  @JsonKey()
  @override
  final bool preformTurnOut;

  @override
  String toString() {
    return 'TemporaryHorseSetup(timeStamp: $timeStamp, insideSetup: $insideSetup, outsideSetup: $outsideSetup, feed: $feed, keepInside: $keepInside, noFood: $noFood, preformStabeling: $preformStabeling, preformTurnOut: $preformTurnOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemporaryHorseSetup &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp) &&
            const DeepCollectionEquality()
                .equals(other.insideSetup, insideSetup) &&
            const DeepCollectionEquality()
                .equals(other.outsideSetup, outsideSetup) &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality()
                .equals(other.keepInside, keepInside) &&
            const DeepCollectionEquality().equals(other.noFood, noFood) &&
            const DeepCollectionEquality()
                .equals(other.preformStabeling, preformStabeling) &&
            const DeepCollectionEquality()
                .equals(other.preformTurnOut, preformTurnOut));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timeStamp),
      const DeepCollectionEquality().hash(insideSetup),
      const DeepCollectionEquality().hash(outsideSetup),
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(keepInside),
      const DeepCollectionEquality().hash(noFood),
      const DeepCollectionEquality().hash(preformStabeling),
      const DeepCollectionEquality().hash(preformTurnOut));

  @JsonKey(ignore: true)
  @override
  _$TemporaryHorseSetupCopyWith<_TemporaryHorseSetup> get copyWith =>
      __$TemporaryHorseSetupCopyWithImpl<_TemporaryHorseSetup>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemporaryHorseSetupToJson(this);
  }
}

abstract class _TemporaryHorseSetup implements TemporaryHorseSetup {
  factory _TemporaryHorseSetup(
      {required DateTime timeStamp,
      required HorseSetup? insideSetup,
      required HorseSetup? outsideSetup,
      bool feed,
      bool keepInside,
      bool noFood,
      bool preformStabeling,
      bool preformTurnOut}) = _$_TemporaryHorseSetup;

  factory _TemporaryHorseSetup.fromJson(Map<String, dynamic> json) =
      _$_TemporaryHorseSetup.fromJson;

  @override
  DateTime get timeStamp;
  @override
  HorseSetup? get insideSetup;
  @override
  HorseSetup? get outsideSetup;
  @override
  bool get feed;
  @override
  bool get keepInside;
  @override
  bool get noFood;
  @override
  bool get preformStabeling;
  @override
  bool get preformTurnOut;
  @override
  @JsonKey(ignore: true)
  _$TemporaryHorseSetupCopyWith<_TemporaryHorseSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoreDetails _$ChoreDetailsFromJson(Map<String, dynamic> json) {
  return _ChoreDetails.fromJson(json);
}

/// @nodoc
class _$ChoreDetailsTearOff {
  const _$ChoreDetailsTearOff();

  _ChoreDetails call(
      {required String name,
      required String ownerId,
      bool feed = true,
      bool preformStabelingOrTurnOut = true,
      required HorseSetup horseSetup}) {
    return _ChoreDetails(
      name: name,
      ownerId: ownerId,
      feed: feed,
      preformStabelingOrTurnOut: preformStabelingOrTurnOut,
      horseSetup: horseSetup,
    );
  }

  ChoreDetails fromJson(Map<String, Object?> json) {
    return ChoreDetails.fromJson(json);
  }
}

/// @nodoc
const $ChoreDetails = _$ChoreDetailsTearOff();

/// @nodoc
mixin _$ChoreDetails {
  String get name => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  bool get feed => throw _privateConstructorUsedError;
  bool get preformStabelingOrTurnOut => throw _privateConstructorUsedError;
  HorseSetup get horseSetup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoreDetailsCopyWith<ChoreDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoreDetailsCopyWith<$Res> {
  factory $ChoreDetailsCopyWith(
          ChoreDetails value, $Res Function(ChoreDetails) then) =
      _$ChoreDetailsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String ownerId,
      bool feed,
      bool preformStabelingOrTurnOut,
      HorseSetup horseSetup});

  $HorseSetupCopyWith<$Res> get horseSetup;
}

/// @nodoc
class _$ChoreDetailsCopyWithImpl<$Res> implements $ChoreDetailsCopyWith<$Res> {
  _$ChoreDetailsCopyWithImpl(this._value, this._then);

  final ChoreDetails _value;
  // ignore: unused_field
  final $Res Function(ChoreDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? ownerId = freezed,
    Object? feed = freezed,
    Object? preformStabelingOrTurnOut = freezed,
    Object? horseSetup = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as bool,
      preformStabelingOrTurnOut: preformStabelingOrTurnOut == freezed
          ? _value.preformStabelingOrTurnOut
          : preformStabelingOrTurnOut // ignore: cast_nullable_to_non_nullable
              as bool,
      horseSetup: horseSetup == freezed
          ? _value.horseSetup
          : horseSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup,
    ));
  }

  @override
  $HorseSetupCopyWith<$Res> get horseSetup {
    return $HorseSetupCopyWith<$Res>(_value.horseSetup, (value) {
      return _then(_value.copyWith(horseSetup: value));
    });
  }
}

/// @nodoc
abstract class _$ChoreDetailsCopyWith<$Res>
    implements $ChoreDetailsCopyWith<$Res> {
  factory _$ChoreDetailsCopyWith(
          _ChoreDetails value, $Res Function(_ChoreDetails) then) =
      __$ChoreDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String ownerId,
      bool feed,
      bool preformStabelingOrTurnOut,
      HorseSetup horseSetup});

  @override
  $HorseSetupCopyWith<$Res> get horseSetup;
}

/// @nodoc
class __$ChoreDetailsCopyWithImpl<$Res> extends _$ChoreDetailsCopyWithImpl<$Res>
    implements _$ChoreDetailsCopyWith<$Res> {
  __$ChoreDetailsCopyWithImpl(
      _ChoreDetails _value, $Res Function(_ChoreDetails) _then)
      : super(_value, (v) => _then(v as _ChoreDetails));

  @override
  _ChoreDetails get _value => super._value as _ChoreDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? ownerId = freezed,
    Object? feed = freezed,
    Object? preformStabelingOrTurnOut = freezed,
    Object? horseSetup = freezed,
  }) {
    return _then(_ChoreDetails(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as bool,
      preformStabelingOrTurnOut: preformStabelingOrTurnOut == freezed
          ? _value.preformStabelingOrTurnOut
          : preformStabelingOrTurnOut // ignore: cast_nullable_to_non_nullable
              as bool,
      horseSetup: horseSetup == freezed
          ? _value.horseSetup
          : horseSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoreDetails implements _ChoreDetails {
  _$_ChoreDetails(
      {required this.name,
      required this.ownerId,
      this.feed = true,
      this.preformStabelingOrTurnOut = true,
      required this.horseSetup});

  factory _$_ChoreDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ChoreDetailsFromJson(json);

  @override
  final String name;
  @override
  final String ownerId;
  @JsonKey()
  @override
  final bool feed;
  @JsonKey()
  @override
  final bool preformStabelingOrTurnOut;
  @override
  final HorseSetup horseSetup;

  @override
  String toString() {
    return 'ChoreDetails(name: $name, ownerId: $ownerId, feed: $feed, preformStabelingOrTurnOut: $preformStabelingOrTurnOut, horseSetup: $horseSetup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoreDetails &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality().equals(
                other.preformStabelingOrTurnOut, preformStabelingOrTurnOut) &&
            const DeepCollectionEquality()
                .equals(other.horseSetup, horseSetup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(preformStabelingOrTurnOut),
      const DeepCollectionEquality().hash(horseSetup));

  @JsonKey(ignore: true)
  @override
  _$ChoreDetailsCopyWith<_ChoreDetails> get copyWith =>
      __$ChoreDetailsCopyWithImpl<_ChoreDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoreDetailsToJson(this);
  }
}

abstract class _ChoreDetails implements ChoreDetails {
  factory _ChoreDetails(
      {required String name,
      required String ownerId,
      bool feed,
      bool preformStabelingOrTurnOut,
      required HorseSetup horseSetup}) = _$_ChoreDetails;

  factory _ChoreDetails.fromJson(Map<String, dynamic> json) =
      _$_ChoreDetails.fromJson;

  @override
  String get name;
  @override
  String get ownerId;
  @override
  bool get feed;
  @override
  bool get preformStabelingOrTurnOut;
  @override
  HorseSetup get horseSetup;
  @override
  @JsonKey(ignore: true)
  _$ChoreDetailsCopyWith<_ChoreDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

HorseConfiguration _$HorseConfigurationFromJson(Map<String, dynamic> json) {
  return _HorseConfiguration.fromJson(json);
}

/// @nodoc
class _$HorseConfigurationTearOff {
  const _$HorseConfigurationTearOff();

  _HorseConfiguration call(
      {required HorseSetup insideSetup,
      required HorseSetup outsideSetup,
      HorseConcentrateFeed? concentrates}) {
    return _HorseConfiguration(
      insideSetup: insideSetup,
      outsideSetup: outsideSetup,
      concentrates: concentrates,
    );
  }

  HorseConfiguration fromJson(Map<String, Object?> json) {
    return HorseConfiguration.fromJson(json);
  }
}

/// @nodoc
const $HorseConfiguration = _$HorseConfigurationTearOff();

/// @nodoc
mixin _$HorseConfiguration {
  HorseSetup get insideSetup => throw _privateConstructorUsedError;
  HorseSetup get outsideSetup => throw _privateConstructorUsedError;
  HorseConcentrateFeed? get concentrates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HorseConfigurationCopyWith<HorseConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HorseConfigurationCopyWith<$Res> {
  factory $HorseConfigurationCopyWith(
          HorseConfiguration value, $Res Function(HorseConfiguration) then) =
      _$HorseConfigurationCopyWithImpl<$Res>;
  $Res call(
      {HorseSetup insideSetup,
      HorseSetup outsideSetup,
      HorseConcentrateFeed? concentrates});

  $HorseSetupCopyWith<$Res> get insideSetup;
  $HorseSetupCopyWith<$Res> get outsideSetup;
}

/// @nodoc
class _$HorseConfigurationCopyWithImpl<$Res>
    implements $HorseConfigurationCopyWith<$Res> {
  _$HorseConfigurationCopyWithImpl(this._value, this._then);

  final HorseConfiguration _value;
  // ignore: unused_field
  final $Res Function(HorseConfiguration) _then;

  @override
  $Res call({
    Object? insideSetup = freezed,
    Object? outsideSetup = freezed,
    Object? concentrates = freezed,
  }) {
    return _then(_value.copyWith(
      insideSetup: insideSetup == freezed
          ? _value.insideSetup
          : insideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup,
      outsideSetup: outsideSetup == freezed
          ? _value.outsideSetup
          : outsideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup,
      concentrates: concentrates == freezed
          ? _value.concentrates
          : concentrates // ignore: cast_nullable_to_non_nullable
              as HorseConcentrateFeed?,
    ));
  }

  @override
  $HorseSetupCopyWith<$Res> get insideSetup {
    return $HorseSetupCopyWith<$Res>(_value.insideSetup, (value) {
      return _then(_value.copyWith(insideSetup: value));
    });
  }

  @override
  $HorseSetupCopyWith<$Res> get outsideSetup {
    return $HorseSetupCopyWith<$Res>(_value.outsideSetup, (value) {
      return _then(_value.copyWith(outsideSetup: value));
    });
  }
}

/// @nodoc
abstract class _$HorseConfigurationCopyWith<$Res>
    implements $HorseConfigurationCopyWith<$Res> {
  factory _$HorseConfigurationCopyWith(
          _HorseConfiguration value, $Res Function(_HorseConfiguration) then) =
      __$HorseConfigurationCopyWithImpl<$Res>;
  @override
  $Res call(
      {HorseSetup insideSetup,
      HorseSetup outsideSetup,
      HorseConcentrateFeed? concentrates});

  @override
  $HorseSetupCopyWith<$Res> get insideSetup;
  @override
  $HorseSetupCopyWith<$Res> get outsideSetup;
}

/// @nodoc
class __$HorseConfigurationCopyWithImpl<$Res>
    extends _$HorseConfigurationCopyWithImpl<$Res>
    implements _$HorseConfigurationCopyWith<$Res> {
  __$HorseConfigurationCopyWithImpl(
      _HorseConfiguration _value, $Res Function(_HorseConfiguration) _then)
      : super(_value, (v) => _then(v as _HorseConfiguration));

  @override
  _HorseConfiguration get _value => super._value as _HorseConfiguration;

  @override
  $Res call({
    Object? insideSetup = freezed,
    Object? outsideSetup = freezed,
    Object? concentrates = freezed,
  }) {
    return _then(_HorseConfiguration(
      insideSetup: insideSetup == freezed
          ? _value.insideSetup
          : insideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup,
      outsideSetup: outsideSetup == freezed
          ? _value.outsideSetup
          : outsideSetup // ignore: cast_nullable_to_non_nullable
              as HorseSetup,
      concentrates: concentrates == freezed
          ? _value.concentrates
          : concentrates // ignore: cast_nullable_to_non_nullable
              as HorseConcentrateFeed?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HorseConfiguration implements _HorseConfiguration {
  _$_HorseConfiguration(
      {required this.insideSetup,
      required this.outsideSetup,
      this.concentrates});

  factory _$_HorseConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_HorseConfigurationFromJson(json);

  @override
  final HorseSetup insideSetup;
  @override
  final HorseSetup outsideSetup;
  @override
  final HorseConcentrateFeed? concentrates;

  @override
  String toString() {
    return 'HorseConfiguration(insideSetup: $insideSetup, outsideSetup: $outsideSetup, concentrates: $concentrates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HorseConfiguration &&
            const DeepCollectionEquality()
                .equals(other.insideSetup, insideSetup) &&
            const DeepCollectionEquality()
                .equals(other.outsideSetup, outsideSetup) &&
            const DeepCollectionEquality()
                .equals(other.concentrates, concentrates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(insideSetup),
      const DeepCollectionEquality().hash(outsideSetup),
      const DeepCollectionEquality().hash(concentrates));

  @JsonKey(ignore: true)
  @override
  _$HorseConfigurationCopyWith<_HorseConfiguration> get copyWith =>
      __$HorseConfigurationCopyWithImpl<_HorseConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HorseConfigurationToJson(this);
  }
}

abstract class _HorseConfiguration implements HorseConfiguration {
  factory _HorseConfiguration(
      {required HorseSetup insideSetup,
      required HorseSetup outsideSetup,
      HorseConcentrateFeed? concentrates}) = _$_HorseConfiguration;

  factory _HorseConfiguration.fromJson(Map<String, dynamic> json) =
      _$_HorseConfiguration.fromJson;

  @override
  HorseSetup get insideSetup;
  @override
  HorseSetup get outsideSetup;
  @override
  HorseConcentrateFeed? get concentrates;
  @override
  @JsonKey(ignore: true)
  _$HorseConfigurationCopyWith<_HorseConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

HorseSetup _$HorseSetupFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'inside':
      return InsideHorseSetup.fromJson(json);
    case 'outside':
      return OutSideHorseSetup.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'HorseSetup', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$HorseSetupTearOff {
  const _$HorseSetupTearOff();

  InsideHorseSetup inside(
      {required HorseCoverSetup cover,
      required HorseProtectionSetup protection}) {
    return InsideHorseSetup(
      cover: cover,
      protection: protection,
    );
  }

  OutSideHorseSetup outside(
      {required HorseCoverSetup cover,
      required HorseProtectionSetup protection}) {
    return OutSideHorseSetup(
      cover: cover,
      protection: protection,
    );
  }

  HorseSetup fromJson(Map<String, Object?> json) {
    return HorseSetup.fromJson(json);
  }
}

/// @nodoc
const $HorseSetup = _$HorseSetupTearOff();

/// @nodoc
mixin _$HorseSetup {
  HorseCoverSetup get cover => throw _privateConstructorUsedError;
  HorseProtectionSetup get protection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HorseCoverSetup cover, HorseProtectionSetup protection)
        inside,
    required TResult Function(
            HorseCoverSetup cover, HorseProtectionSetup protection)
        outside,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        inside,
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        outside,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        inside,
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        outside,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsideHorseSetup value) inside,
    required TResult Function(OutSideHorseSetup value) outside,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InsideHorseSetup value)? inside,
    TResult Function(OutSideHorseSetup value)? outside,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsideHorseSetup value)? inside,
    TResult Function(OutSideHorseSetup value)? outside,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HorseSetupCopyWith<HorseSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HorseSetupCopyWith<$Res> {
  factory $HorseSetupCopyWith(
          HorseSetup value, $Res Function(HorseSetup) then) =
      _$HorseSetupCopyWithImpl<$Res>;
  $Res call({HorseCoverSetup cover, HorseProtectionSetup protection});
}

/// @nodoc
class _$HorseSetupCopyWithImpl<$Res> implements $HorseSetupCopyWith<$Res> {
  _$HorseSetupCopyWithImpl(this._value, this._then);

  final HorseSetup _value;
  // ignore: unused_field
  final $Res Function(HorseSetup) _then;

  @override
  $Res call({
    Object? cover = freezed,
    Object? protection = freezed,
  }) {
    return _then(_value.copyWith(
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as HorseCoverSetup,
      protection: protection == freezed
          ? _value.protection
          : protection // ignore: cast_nullable_to_non_nullable
              as HorseProtectionSetup,
    ));
  }
}

/// @nodoc
abstract class $InsideHorseSetupCopyWith<$Res>
    implements $HorseSetupCopyWith<$Res> {
  factory $InsideHorseSetupCopyWith(
          InsideHorseSetup value, $Res Function(InsideHorseSetup) then) =
      _$InsideHorseSetupCopyWithImpl<$Res>;
  @override
  $Res call({HorseCoverSetup cover, HorseProtectionSetup protection});
}

/// @nodoc
class _$InsideHorseSetupCopyWithImpl<$Res>
    extends _$HorseSetupCopyWithImpl<$Res>
    implements $InsideHorseSetupCopyWith<$Res> {
  _$InsideHorseSetupCopyWithImpl(
      InsideHorseSetup _value, $Res Function(InsideHorseSetup) _then)
      : super(_value, (v) => _then(v as InsideHorseSetup));

  @override
  InsideHorseSetup get _value => super._value as InsideHorseSetup;

  @override
  $Res call({
    Object? cover = freezed,
    Object? protection = freezed,
  }) {
    return _then(InsideHorseSetup(
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as HorseCoverSetup,
      protection: protection == freezed
          ? _value.protection
          : protection // ignore: cast_nullable_to_non_nullable
              as HorseProtectionSetup,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('inside')
class _$InsideHorseSetup implements InsideHorseSetup {
  const _$InsideHorseSetup(
      {required this.cover, required this.protection, String? $type})
      : $type = $type ?? 'inside';

  factory _$InsideHorseSetup.fromJson(Map<String, dynamic> json) =>
      _$$InsideHorseSetupFromJson(json);

  @override
  final HorseCoverSetup cover;
  @override
  final HorseProtectionSetup protection;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'HorseSetup.inside(cover: $cover, protection: $protection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsideHorseSetup &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.protection, protection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(protection));

  @JsonKey(ignore: true)
  @override
  $InsideHorseSetupCopyWith<InsideHorseSetup> get copyWith =>
      _$InsideHorseSetupCopyWithImpl<InsideHorseSetup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HorseCoverSetup cover, HorseProtectionSetup protection)
        inside,
    required TResult Function(
            HorseCoverSetup cover, HorseProtectionSetup protection)
        outside,
  }) {
    return inside(cover, protection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        inside,
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        outside,
  }) {
    return inside?.call(cover, protection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        inside,
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        outside,
    required TResult orElse(),
  }) {
    if (inside != null) {
      return inside(cover, protection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsideHorseSetup value) inside,
    required TResult Function(OutSideHorseSetup value) outside,
  }) {
    return inside(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InsideHorseSetup value)? inside,
    TResult Function(OutSideHorseSetup value)? outside,
  }) {
    return inside?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsideHorseSetup value)? inside,
    TResult Function(OutSideHorseSetup value)? outside,
    required TResult orElse(),
  }) {
    if (inside != null) {
      return inside(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InsideHorseSetupToJson(this);
  }
}

abstract class InsideHorseSetup implements HorseSetup {
  const factory InsideHorseSetup(
      {required HorseCoverSetup cover,
      required HorseProtectionSetup protection}) = _$InsideHorseSetup;

  factory InsideHorseSetup.fromJson(Map<String, dynamic> json) =
      _$InsideHorseSetup.fromJson;

  @override
  HorseCoverSetup get cover;
  @override
  HorseProtectionSetup get protection;
  @override
  @JsonKey(ignore: true)
  $InsideHorseSetupCopyWith<InsideHorseSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutSideHorseSetupCopyWith<$Res>
    implements $HorseSetupCopyWith<$Res> {
  factory $OutSideHorseSetupCopyWith(
          OutSideHorseSetup value, $Res Function(OutSideHorseSetup) then) =
      _$OutSideHorseSetupCopyWithImpl<$Res>;
  @override
  $Res call({HorseCoverSetup cover, HorseProtectionSetup protection});
}

/// @nodoc
class _$OutSideHorseSetupCopyWithImpl<$Res>
    extends _$HorseSetupCopyWithImpl<$Res>
    implements $OutSideHorseSetupCopyWith<$Res> {
  _$OutSideHorseSetupCopyWithImpl(
      OutSideHorseSetup _value, $Res Function(OutSideHorseSetup) _then)
      : super(_value, (v) => _then(v as OutSideHorseSetup));

  @override
  OutSideHorseSetup get _value => super._value as OutSideHorseSetup;

  @override
  $Res call({
    Object? cover = freezed,
    Object? protection = freezed,
  }) {
    return _then(OutSideHorseSetup(
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as HorseCoverSetup,
      protection: protection == freezed
          ? _value.protection
          : protection // ignore: cast_nullable_to_non_nullable
              as HorseProtectionSetup,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('outside')
class _$OutSideHorseSetup implements OutSideHorseSetup {
  const _$OutSideHorseSetup(
      {required this.cover, required this.protection, String? $type})
      : $type = $type ?? 'outside';

  factory _$OutSideHorseSetup.fromJson(Map<String, dynamic> json) =>
      _$$OutSideHorseSetupFromJson(json);

  @override
  final HorseCoverSetup cover;
  @override
  final HorseProtectionSetup protection;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'HorseSetup.outside(cover: $cover, protection: $protection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OutSideHorseSetup &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.protection, protection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(protection));

  @JsonKey(ignore: true)
  @override
  $OutSideHorseSetupCopyWith<OutSideHorseSetup> get copyWith =>
      _$OutSideHorseSetupCopyWithImpl<OutSideHorseSetup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HorseCoverSetup cover, HorseProtectionSetup protection)
        inside,
    required TResult Function(
            HorseCoverSetup cover, HorseProtectionSetup protection)
        outside,
  }) {
    return outside(cover, protection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        inside,
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        outside,
  }) {
    return outside?.call(cover, protection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        inside,
    TResult Function(HorseCoverSetup cover, HorseProtectionSetup protection)?
        outside,
    required TResult orElse(),
  }) {
    if (outside != null) {
      return outside(cover, protection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsideHorseSetup value) inside,
    required TResult Function(OutSideHorseSetup value) outside,
  }) {
    return outside(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InsideHorseSetup value)? inside,
    TResult Function(OutSideHorseSetup value)? outside,
  }) {
    return outside?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsideHorseSetup value)? inside,
    TResult Function(OutSideHorseSetup value)? outside,
    required TResult orElse(),
  }) {
    if (outside != null) {
      return outside(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OutSideHorseSetupToJson(this);
  }
}

abstract class OutSideHorseSetup implements HorseSetup {
  const factory OutSideHorseSetup(
      {required HorseCoverSetup cover,
      required HorseProtectionSetup protection}) = _$OutSideHorseSetup;

  factory OutSideHorseSetup.fromJson(Map<String, dynamic> json) =
      _$OutSideHorseSetup.fromJson;

  @override
  HorseCoverSetup get cover;
  @override
  HorseProtectionSetup get protection;
  @override
  @JsonKey(ignore: true)
  $OutSideHorseSetupCopyWith<OutSideHorseSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

Stables _$StablesFromJson(Map<String, dynamic> json) {
  return _Stables.fromJson(json);
}

/// @nodoc
class _$StablesTearOff {
  const _$StablesTearOff();

  _Stables call(
      {required String id,
      required String displayName,
      List<String>? members,
      StablesSchedule? schedule}) {
    return _Stables(
      id: id,
      displayName: displayName,
      members: members,
      schedule: schedule,
    );
  }

  Stables fromJson(Map<String, Object?> json) {
    return Stables.fromJson(json);
  }
}

/// @nodoc
const $Stables = _$StablesTearOff();

/// @nodoc
mixin _$Stables {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  List<String>? get members => throw _privateConstructorUsedError;
  StablesSchedule? get schedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StablesCopyWith<Stables> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StablesCopyWith<$Res> {
  factory $StablesCopyWith(Stables value, $Res Function(Stables) then) =
      _$StablesCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String displayName,
      List<String>? members,
      StablesSchedule? schedule});

  $StablesScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$StablesCopyWithImpl<$Res> implements $StablesCopyWith<$Res> {
  _$StablesCopyWithImpl(this._value, this._then);

  final Stables _value;
  // ignore: unused_field
  final $Res Function(Stables) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? members = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as StablesSchedule?,
    ));
  }

  @override
  $StablesScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $StablesScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc
abstract class _$StablesCopyWith<$Res> implements $StablesCopyWith<$Res> {
  factory _$StablesCopyWith(_Stables value, $Res Function(_Stables) then) =
      __$StablesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String displayName,
      List<String>? members,
      StablesSchedule? schedule});

  @override
  $StablesScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class __$StablesCopyWithImpl<$Res> extends _$StablesCopyWithImpl<$Res>
    implements _$StablesCopyWith<$Res> {
  __$StablesCopyWithImpl(_Stables _value, $Res Function(_Stables) _then)
      : super(_value, (v) => _then(v as _Stables));

  @override
  _Stables get _value => super._value as _Stables;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? members = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_Stables(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as StablesSchedule?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stables implements _Stables {
  _$_Stables(
      {required this.id,
      required this.displayName,
      this.members,
      this.schedule});

  factory _$_Stables.fromJson(Map<String, dynamic> json) =>
      _$$_StablesFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final List<String>? members;
  @override
  final StablesSchedule? schedule;

  @override
  String toString() {
    return 'Stables(id: $id, displayName: $displayName, members: $members, schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stables &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.schedule, schedule));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(schedule));

  @JsonKey(ignore: true)
  @override
  _$StablesCopyWith<_Stables> get copyWith =>
      __$StablesCopyWithImpl<_Stables>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StablesToJson(this);
  }
}

abstract class _Stables implements Stables {
  factory _Stables(
      {required String id,
      required String displayName,
      List<String>? members,
      StablesSchedule? schedule}) = _$_Stables;

  factory _Stables.fromJson(Map<String, dynamic> json) = _$_Stables.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  List<String>? get members;
  @override
  StablesSchedule? get schedule;
  @override
  @JsonKey(ignore: true)
  _$StablesCopyWith<_Stables> get copyWith =>
      throw _privateConstructorUsedError;
}

StablesSchedule _$StablesScheduleFromJson(Map<String, dynamic> json) {
  return _StablesSchedule.fromJson(json);
}

/// @nodoc
class _$StablesScheduleTearOff {
  const _$StablesScheduleTearOff();

  _StablesSchedule call(
      {required List<StableChore> monday,
      required List<StableChore> tuesday,
      required List<StableChore> wednesday,
      required List<StableChore> thursday,
      required List<StableChore> friday,
      required List<StableChore> saturday,
      required List<StableChore> sunday}) {
    return _StablesSchedule(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
    );
  }

  StablesSchedule fromJson(Map<String, Object?> json) {
    return StablesSchedule.fromJson(json);
  }
}

/// @nodoc
const $StablesSchedule = _$StablesScheduleTearOff();

/// @nodoc
mixin _$StablesSchedule {
  List<StableChore> get monday => throw _privateConstructorUsedError;
  List<StableChore> get tuesday => throw _privateConstructorUsedError;
  List<StableChore> get wednesday => throw _privateConstructorUsedError;
  List<StableChore> get thursday => throw _privateConstructorUsedError;
  List<StableChore> get friday => throw _privateConstructorUsedError;
  List<StableChore> get saturday => throw _privateConstructorUsedError;
  List<StableChore> get sunday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StablesScheduleCopyWith<StablesSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StablesScheduleCopyWith<$Res> {
  factory $StablesScheduleCopyWith(
          StablesSchedule value, $Res Function(StablesSchedule) then) =
      _$StablesScheduleCopyWithImpl<$Res>;
  $Res call(
      {List<StableChore> monday,
      List<StableChore> tuesday,
      List<StableChore> wednesday,
      List<StableChore> thursday,
      List<StableChore> friday,
      List<StableChore> saturday,
      List<StableChore> sunday});
}

/// @nodoc
class _$StablesScheduleCopyWithImpl<$Res>
    implements $StablesScheduleCopyWith<$Res> {
  _$StablesScheduleCopyWithImpl(this._value, this._then);

  final StablesSchedule _value;
  // ignore: unused_field
  final $Res Function(StablesSchedule) _then;

  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_value.copyWith(
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
    ));
  }
}

/// @nodoc
abstract class _$StablesScheduleCopyWith<$Res>
    implements $StablesScheduleCopyWith<$Res> {
  factory _$StablesScheduleCopyWith(
          _StablesSchedule value, $Res Function(_StablesSchedule) then) =
      __$StablesScheduleCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<StableChore> monday,
      List<StableChore> tuesday,
      List<StableChore> wednesday,
      List<StableChore> thursday,
      List<StableChore> friday,
      List<StableChore> saturday,
      List<StableChore> sunday});
}

/// @nodoc
class __$StablesScheduleCopyWithImpl<$Res>
    extends _$StablesScheduleCopyWithImpl<$Res>
    implements _$StablesScheduleCopyWith<$Res> {
  __$StablesScheduleCopyWithImpl(
      _StablesSchedule _value, $Res Function(_StablesSchedule) _then)
      : super(_value, (v) => _then(v as _StablesSchedule));

  @override
  _StablesSchedule get _value => super._value as _StablesSchedule;

  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_StablesSchedule(
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as List<StableChore>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StablesSchedule extends _StablesSchedule {
  const _$_StablesSchedule(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday})
      : super._();

  factory _$_StablesSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_StablesScheduleFromJson(json);

  @override
  final List<StableChore> monday;
  @override
  final List<StableChore> tuesday;
  @override
  final List<StableChore> wednesday;
  @override
  final List<StableChore> thursday;
  @override
  final List<StableChore> friday;
  @override
  final List<StableChore> saturday;
  @override
  final List<StableChore> sunday;

  @override
  String toString() {
    return 'StablesSchedule(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StablesSchedule &&
            const DeepCollectionEquality().equals(other.monday, monday) &&
            const DeepCollectionEquality().equals(other.tuesday, tuesday) &&
            const DeepCollectionEquality().equals(other.wednesday, wednesday) &&
            const DeepCollectionEquality().equals(other.thursday, thursday) &&
            const DeepCollectionEquality().equals(other.friday, friday) &&
            const DeepCollectionEquality().equals(other.saturday, saturday) &&
            const DeepCollectionEquality().equals(other.sunday, sunday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(monday),
      const DeepCollectionEquality().hash(tuesday),
      const DeepCollectionEquality().hash(wednesday),
      const DeepCollectionEquality().hash(thursday),
      const DeepCollectionEquality().hash(friday),
      const DeepCollectionEquality().hash(saturday),
      const DeepCollectionEquality().hash(sunday));

  @JsonKey(ignore: true)
  @override
  _$StablesScheduleCopyWith<_StablesSchedule> get copyWith =>
      __$StablesScheduleCopyWithImpl<_StablesSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StablesScheduleToJson(this);
  }
}

abstract class _StablesSchedule extends StablesSchedule {
  const factory _StablesSchedule(
      {required List<StableChore> monday,
      required List<StableChore> tuesday,
      required List<StableChore> wednesday,
      required List<StableChore> thursday,
      required List<StableChore> friday,
      required List<StableChore> saturday,
      required List<StableChore> sunday}) = _$_StablesSchedule;
  const _StablesSchedule._() : super._();

  factory _StablesSchedule.fromJson(Map<String, dynamic> json) =
      _$_StablesSchedule.fromJson;

  @override
  List<StableChore> get monday;
  @override
  List<StableChore> get tuesday;
  @override
  List<StableChore> get wednesday;
  @override
  List<StableChore> get thursday;
  @override
  List<StableChore> get friday;
  @override
  List<StableChore> get saturday;
  @override
  List<StableChore> get sunday;
  @override
  @JsonKey(ignore: true)
  _$StablesScheduleCopyWith<_StablesSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

StableChore _$StableChoreFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'turnout':
      return TurnOut.fromJson(json);
    case 'stableing':
      return Stableing.fromJson(json);
    case 'feeding':
      return Feeding.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'StableChore', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$StableChoreTearOff {
  const _$StableChoreTearOff();

  TurnOut turnOut(
      {required String time,
      required String displayName,
      String? assingneeId}) {
    return TurnOut(
      time: time,
      displayName: displayName,
      assingneeId: assingneeId,
    );
  }

  Stableing stableing(
      {required String time,
      required String displayName,
      String? assingneeId}) {
    return Stableing(
      time: time,
      displayName: displayName,
      assingneeId: assingneeId,
    );
  }

  Feeding feeding(
      {required String time,
      required String displayName,
      String? assingneeId}) {
    return Feeding(
      time: time,
      displayName: displayName,
      assingneeId: assingneeId,
    );
  }

  StableChore fromJson(Map<String, Object?> json) {
    return StableChore.fromJson(json);
  }
}

/// @nodoc
const $StableChore = _$StableChoreTearOff();

/// @nodoc
mixin _$StableChore {
  String get time => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get assingneeId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String time, String displayName, String? assingneeId)
        turnOut,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        stableing,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        feeding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TurnOut value) turnOut,
    required TResult Function(Stableing value) stableing,
    required TResult Function(Feeding value) feeding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StableChoreCopyWith<StableChore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StableChoreCopyWith<$Res> {
  factory $StableChoreCopyWith(
          StableChore value, $Res Function(StableChore) then) =
      _$StableChoreCopyWithImpl<$Res>;
  $Res call({String time, String displayName, String? assingneeId});
}

/// @nodoc
class _$StableChoreCopyWithImpl<$Res> implements $StableChoreCopyWith<$Res> {
  _$StableChoreCopyWithImpl(this._value, this._then);

  final StableChore _value;
  // ignore: unused_field
  final $Res Function(StableChore) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? displayName = freezed,
    Object? assingneeId = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      assingneeId: assingneeId == freezed
          ? _value.assingneeId
          : assingneeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $TurnOutCopyWith<$Res> implements $StableChoreCopyWith<$Res> {
  factory $TurnOutCopyWith(TurnOut value, $Res Function(TurnOut) then) =
      _$TurnOutCopyWithImpl<$Res>;
  @override
  $Res call({String time, String displayName, String? assingneeId});
}

/// @nodoc
class _$TurnOutCopyWithImpl<$Res> extends _$StableChoreCopyWithImpl<$Res>
    implements $TurnOutCopyWith<$Res> {
  _$TurnOutCopyWithImpl(TurnOut _value, $Res Function(TurnOut) _then)
      : super(_value, (v) => _then(v as TurnOut));

  @override
  TurnOut get _value => super._value as TurnOut;

  @override
  $Res call({
    Object? time = freezed,
    Object? displayName = freezed,
    Object? assingneeId = freezed,
  }) {
    return _then(TurnOut(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      assingneeId: assingneeId == freezed
          ? _value.assingneeId
          : assingneeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('turnout')
class _$TurnOut implements TurnOut {
  const _$TurnOut(
      {required this.time,
      required this.displayName,
      this.assingneeId,
      String? $type})
      : $type = $type ?? 'turnout';

  factory _$TurnOut.fromJson(Map<String, dynamic> json) =>
      _$$TurnOutFromJson(json);

  @override
  final String time;
  @override
  final String displayName;
  @override
  final String? assingneeId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'StableChore.turnOut(time: $time, displayName: $displayName, assingneeId: $assingneeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TurnOut &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.assingneeId, assingneeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(assingneeId));

  @JsonKey(ignore: true)
  @override
  $TurnOutCopyWith<TurnOut> get copyWith =>
      _$TurnOutCopyWithImpl<TurnOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String time, String displayName, String? assingneeId)
        turnOut,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        stableing,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        feeding,
  }) {
    return turnOut(time, displayName, assingneeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
  }) {
    return turnOut?.call(time, displayName, assingneeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
    required TResult orElse(),
  }) {
    if (turnOut != null) {
      return turnOut(time, displayName, assingneeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TurnOut value) turnOut,
    required TResult Function(Stableing value) stableing,
    required TResult Function(Feeding value) feeding,
  }) {
    return turnOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
  }) {
    return turnOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
    required TResult orElse(),
  }) {
    if (turnOut != null) {
      return turnOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TurnOutToJson(this);
  }
}

abstract class TurnOut implements StableChore {
  const factory TurnOut(
      {required String time,
      required String displayName,
      String? assingneeId}) = _$TurnOut;

  factory TurnOut.fromJson(Map<String, dynamic> json) = _$TurnOut.fromJson;

  @override
  String get time;
  @override
  String get displayName;
  @override
  String? get assingneeId;
  @override
  @JsonKey(ignore: true)
  $TurnOutCopyWith<TurnOut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StableingCopyWith<$Res> implements $StableChoreCopyWith<$Res> {
  factory $StableingCopyWith(Stableing value, $Res Function(Stableing) then) =
      _$StableingCopyWithImpl<$Res>;
  @override
  $Res call({String time, String displayName, String? assingneeId});
}

/// @nodoc
class _$StableingCopyWithImpl<$Res> extends _$StableChoreCopyWithImpl<$Res>
    implements $StableingCopyWith<$Res> {
  _$StableingCopyWithImpl(Stableing _value, $Res Function(Stableing) _then)
      : super(_value, (v) => _then(v as Stableing));

  @override
  Stableing get _value => super._value as Stableing;

  @override
  $Res call({
    Object? time = freezed,
    Object? displayName = freezed,
    Object? assingneeId = freezed,
  }) {
    return _then(Stableing(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      assingneeId: assingneeId == freezed
          ? _value.assingneeId
          : assingneeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('stableing')
class _$Stableing implements Stableing {
  const _$Stableing(
      {required this.time,
      required this.displayName,
      this.assingneeId,
      String? $type})
      : $type = $type ?? 'stableing';

  factory _$Stableing.fromJson(Map<String, dynamic> json) =>
      _$$StableingFromJson(json);

  @override
  final String time;
  @override
  final String displayName;
  @override
  final String? assingneeId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'StableChore.stableing(time: $time, displayName: $displayName, assingneeId: $assingneeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Stableing &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.assingneeId, assingneeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(assingneeId));

  @JsonKey(ignore: true)
  @override
  $StableingCopyWith<Stableing> get copyWith =>
      _$StableingCopyWithImpl<Stableing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String time, String displayName, String? assingneeId)
        turnOut,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        stableing,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        feeding,
  }) {
    return stableing(time, displayName, assingneeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
  }) {
    return stableing?.call(time, displayName, assingneeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
    required TResult orElse(),
  }) {
    if (stableing != null) {
      return stableing(time, displayName, assingneeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TurnOut value) turnOut,
    required TResult Function(Stableing value) stableing,
    required TResult Function(Feeding value) feeding,
  }) {
    return stableing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
  }) {
    return stableing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
    required TResult orElse(),
  }) {
    if (stableing != null) {
      return stableing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StableingToJson(this);
  }
}

abstract class Stableing implements StableChore {
  const factory Stableing(
      {required String time,
      required String displayName,
      String? assingneeId}) = _$Stableing;

  factory Stableing.fromJson(Map<String, dynamic> json) = _$Stableing.fromJson;

  @override
  String get time;
  @override
  String get displayName;
  @override
  String? get assingneeId;
  @override
  @JsonKey(ignore: true)
  $StableingCopyWith<Stableing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedingCopyWith<$Res> implements $StableChoreCopyWith<$Res> {
  factory $FeedingCopyWith(Feeding value, $Res Function(Feeding) then) =
      _$FeedingCopyWithImpl<$Res>;
  @override
  $Res call({String time, String displayName, String? assingneeId});
}

/// @nodoc
class _$FeedingCopyWithImpl<$Res> extends _$StableChoreCopyWithImpl<$Res>
    implements $FeedingCopyWith<$Res> {
  _$FeedingCopyWithImpl(Feeding _value, $Res Function(Feeding) _then)
      : super(_value, (v) => _then(v as Feeding));

  @override
  Feeding get _value => super._value as Feeding;

  @override
  $Res call({
    Object? time = freezed,
    Object? displayName = freezed,
    Object? assingneeId = freezed,
  }) {
    return _then(Feeding(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      assingneeId: assingneeId == freezed
          ? _value.assingneeId
          : assingneeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('feeding')
class _$Feeding implements Feeding {
  const _$Feeding(
      {required this.time,
      required this.displayName,
      this.assingneeId,
      String? $type})
      : $type = $type ?? 'feeding';

  factory _$Feeding.fromJson(Map<String, dynamic> json) =>
      _$$FeedingFromJson(json);

  @override
  final String time;
  @override
  final String displayName;
  @override
  final String? assingneeId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'StableChore.feeding(time: $time, displayName: $displayName, assingneeId: $assingneeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Feeding &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.assingneeId, assingneeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(assingneeId));

  @JsonKey(ignore: true)
  @override
  $FeedingCopyWith<Feeding> get copyWith =>
      _$FeedingCopyWithImpl<Feeding>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String time, String displayName, String? assingneeId)
        turnOut,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        stableing,
    required TResult Function(
            String time, String displayName, String? assingneeId)
        feeding,
  }) {
    return feeding(time, displayName, assingneeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
  }) {
    return feeding?.call(time, displayName, assingneeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time, String displayName, String? assingneeId)?
        turnOut,
    TResult Function(String time, String displayName, String? assingneeId)?
        stableing,
    TResult Function(String time, String displayName, String? assingneeId)?
        feeding,
    required TResult orElse(),
  }) {
    if (feeding != null) {
      return feeding(time, displayName, assingneeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TurnOut value) turnOut,
    required TResult Function(Stableing value) stableing,
    required TResult Function(Feeding value) feeding,
  }) {
    return feeding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
  }) {
    return feeding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TurnOut value)? turnOut,
    TResult Function(Stableing value)? stableing,
    TResult Function(Feeding value)? feeding,
    required TResult orElse(),
  }) {
    if (feeding != null) {
      return feeding(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedingToJson(this);
  }
}

abstract class Feeding implements StableChore {
  const factory Feeding(
      {required String time,
      required String displayName,
      String? assingneeId}) = _$Feeding;

  factory Feeding.fromJson(Map<String, dynamic> json) = _$Feeding.fromJson;

  @override
  String get time;
  @override
  String get displayName;
  @override
  String? get assingneeId;
  @override
  @JsonKey(ignore: true)
  $FeedingCopyWith<Feeding> get copyWith => throw _privateConstructorUsedError;
}
