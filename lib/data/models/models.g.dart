// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      type: $enumDecode(_$UserTypeEnumMap, json['type']),
      userId: json['userId'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      stablesId: json['stablesId'] as String?,
      horses: (json['horses'] as List<dynamic>?)
          ?.map((e) => Horse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'type': _$UserTypeEnumMap[instance.type],
      'userId': instance.userId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'stablesId': instance.stablesId,
      'horses': instance.horses?.map((e) => e.toJson()).toList(),
    };

const _$UserTypeEnumMap = {
  UserType.user: 'user',
  UserType.owner: 'owner',
};

_$_Horse _$$_HorseFromJson(Map<String, dynamic> json) => _$_Horse(
      id: json['id'] as String,
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      extraRiders: (json['extraRiders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_HorseToJson(_$_Horse instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'extraRiders': instance.extraRiders,
    };

_$_Stables _$$_StablesFromJson(Map<String, dynamic> json) => _$_Stables(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      members:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
      schedule: json['schedule'] == null
          ? null
          : StablesSchedule.fromJson(json['schedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StablesToJson(_$_Stables instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'members': instance.members,
      'schedule': instance.schedule?.toJson(),
    };

_$_StablesSchedule _$$_StablesScheduleFromJson(Map<String, dynamic> json) =>
    _$_StablesSchedule(
      monday: (json['monday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
      tuesday: (json['tuesday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
      wednesday: (json['wednesday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
      thursday: (json['thursday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
      friday: (json['friday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
      saturday: (json['saturday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
      sunday: (json['sunday'] as List<dynamic>)
          .map((e) => StableChore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StablesScheduleToJson(_$_StablesSchedule instance) =>
    <String, dynamic>{
      'monday': instance.monday.map((e) => e.toJson()).toList(),
      'tuesday': instance.tuesday.map((e) => e.toJson()).toList(),
      'wednesday': instance.wednesday.map((e) => e.toJson()).toList(),
      'thursday': instance.thursday.map((e) => e.toJson()).toList(),
      'friday': instance.friday.map((e) => e.toJson()).toList(),
      'saturday': instance.saturday.map((e) => e.toJson()).toList(),
      'sunday': instance.sunday.map((e) => e.toJson()).toList(),
    };

_$TurnOut _$$TurnOutFromJson(Map<String, dynamic> json) => _$TurnOut(
      time: json['time'] as String,
      displayName: json['displayName'] as String,
      assingneeId: json['assingneeId'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TurnOutToJson(_$TurnOut instance) => <String, dynamic>{
      'time': instance.time,
      'displayName': instance.displayName,
      'assingneeId': instance.assingneeId,
      'type': instance.$type,
    };

_$Stableing _$$StableingFromJson(Map<String, dynamic> json) => _$Stableing(
      time: json['time'] as String,
      displayName: json['displayName'] as String,
      assingneeId: json['assingneeId'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StableingToJson(_$Stableing instance) =>
    <String, dynamic>{
      'time': instance.time,
      'displayName': instance.displayName,
      'assingneeId': instance.assingneeId,
      'type': instance.$type,
    };

_$Feeding _$$FeedingFromJson(Map<String, dynamic> json) => _$Feeding(
      time: json['time'] as String,
      displayName: json['displayName'] as String,
      assingneeId: json['assingneeId'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FeedingToJson(_$Feeding instance) => <String, dynamic>{
      'time': instance.time,
      'displayName': instance.displayName,
      'assingneeId': instance.assingneeId,
      'type': instance.$type,
    };

_$_StableWork _$$_StableWorkFromJson(Map<String, dynamic> json) =>
    _$_StableWork(
      day: $enumDecode(_$DaysEnumMap, json['day']),
      time: json['time'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$_StableWorkToJson(_$_StableWork instance) =>
    <String, dynamic>{
      'day': _$DaysEnumMap[instance.day],
      'time': instance.time,
      'displayName': instance.displayName,
    };

const _$DaysEnumMap = {
  Days.monday: 'monday',
  Days.tuesday: 'tuesday',
  Days.wednesday: 'wednesday',
  Days.thursday: 'thursday',
  Days.friday: 'friday',
  Days.saturday: 'saturday',
  Days.sunday: 'sunday',
};
