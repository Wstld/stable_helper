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
      List<Horse>? horses}) {
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
  List<Horse>? get horses => throw _privateConstructorUsedError;

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
      List<Horse>? horses});
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
              as List<Horse>?,
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
      List<Horse>? horses});
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
              as List<Horse>?,
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
  final List<Horse>? horses;

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
      List<Horse>? horses}) = _$_User;

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
  List<Horse>? get horses;
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
      required String name,
      required String ownerId,
      List<String>? extraRiders}) {
    return _Horse(
      id: id,
      name: name,
      ownerId: ownerId,
      extraRiders: extraRiders,
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
  String get name => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  List<String>? get extraRiders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HorseCopyWith<Horse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HorseCopyWith<$Res> {
  factory $HorseCopyWith(Horse value, $Res Function(Horse) then) =
      _$HorseCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, String ownerId, List<String>? extraRiders});
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
    Object? name = freezed,
    Object? ownerId = freezed,
    Object? extraRiders = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      extraRiders: extraRiders == freezed
          ? _value.extraRiders
          : extraRiders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$HorseCopyWith<$Res> implements $HorseCopyWith<$Res> {
  factory _$HorseCopyWith(_Horse value, $Res Function(_Horse) then) =
      __$HorseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, String ownerId, List<String>? extraRiders});
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
    Object? name = freezed,
    Object? ownerId = freezed,
    Object? extraRiders = freezed,
  }) {
    return _then(_Horse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      extraRiders: extraRiders == freezed
          ? _value.extraRiders
          : extraRiders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Horse implements _Horse {
  _$_Horse(
      {required this.id,
      required this.name,
      required this.ownerId,
      this.extraRiders});

  factory _$_Horse.fromJson(Map<String, dynamic> json) =>
      _$$_HorseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String ownerId;
  @override
  final List<String>? extraRiders;

  @override
  String toString() {
    return 'Horse(id: $id, name: $name, ownerId: $ownerId, extraRiders: $extraRiders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Horse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality()
                .equals(other.extraRiders, extraRiders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(extraRiders));

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
      required String name,
      required String ownerId,
      List<String>? extraRiders}) = _$_Horse;

  factory _Horse.fromJson(Map<String, dynamic> json) = _$_Horse.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get ownerId;
  @override
  List<String>? get extraRiders;
  @override
  @JsonKey(ignore: true)
  _$HorseCopyWith<_Horse> get copyWith => throw _privateConstructorUsedError;
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
class _$_StablesSchedule implements _StablesSchedule {
  _$_StablesSchedule(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday});

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

abstract class _StablesSchedule implements StablesSchedule {
  factory _StablesSchedule(
      {required List<StableChore> monday,
      required List<StableChore> tuesday,
      required List<StableChore> wednesday,
      required List<StableChore> thursday,
      required List<StableChore> friday,
      required List<StableChore> saturday,
      required List<StableChore> sunday}) = _$_StablesSchedule;

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
