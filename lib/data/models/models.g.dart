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
      horses: (json['horses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Horse.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'type': _$UserTypeEnumMap[instance.type],
      'userId': instance.userId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'stablesId': instance.stablesId,
      'horses': instance.horses?.map((k, e) => MapEntry(k, e.toJson())),
    };

const _$UserTypeEnumMap = {
  UserType.user: 'user',
  UserType.owner: 'owner',
};

_$_Horse _$$_HorseFromJson(Map<String, dynamic> json) => _$_Horse(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      name: json['name'] as String,
      stablesId: json['stablesId'] as String?,
      extraRiders: (json['extraRiders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      horseSetup: HorseConfiguration.fromJson(
          json['horseSetup'] as Map<String, dynamic>),
      temporarySetup: (json['temporarySetup'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, TemporaryHorseSetup.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_HorseToJson(_$_Horse instance) => <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'name': instance.name,
      'stablesId': instance.stablesId,
      'extraRiders': instance.extraRiders,
      'horseSetup': instance.horseSetup.toJson(),
      'temporarySetup':
          instance.temporarySetup?.map((k, e) => MapEntry(k, e.toJson())),
    };

_$_TemporaryHorseSetup _$$_TemporaryHorseSetupFromJson(
        Map<String, dynamic> json) =>
    _$_TemporaryHorseSetup(
      timeStamp: DateTime.parse(json['timeStamp'] as String),
      insideSetup: json['insideSetup'] == null
          ? null
          : HorseSetup.fromJson(json['insideSetup'] as Map<String, dynamic>),
      outsideSetup: json['outsideSetup'] == null
          ? null
          : HorseSetup.fromJson(json['outsideSetup'] as Map<String, dynamic>),
      feed: json['feed'] as bool? ?? true,
      keepInside: json['keepInside'] as bool? ?? false,
      noFood: json['noFood'] as bool? ?? false,
      preformStabeling: json['preformStabeling'] as bool? ?? true,
      preformTurnOut: json['preformTurnOut'] as bool? ?? true,
    );

Map<String, dynamic> _$$_TemporaryHorseSetupToJson(
        _$_TemporaryHorseSetup instance) =>
    <String, dynamic>{
      'timeStamp': instance.timeStamp.toIso8601String(),
      'insideSetup': instance.insideSetup?.toJson(),
      'outsideSetup': instance.outsideSetup?.toJson(),
      'feed': instance.feed,
      'keepInside': instance.keepInside,
      'noFood': instance.noFood,
      'preformStabeling': instance.preformStabeling,
      'preformTurnOut': instance.preformTurnOut,
    };

_$_ChoreDetails _$$_ChoreDetailsFromJson(Map<String, dynamic> json) =>
    _$_ChoreDetails(
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      feed: json['feed'] as bool? ?? true,
      preformStabelingOrTurnOut:
          json['preformStabelingOrTurnOut'] as bool? ?? true,
      horseSetup:
          HorseSetup.fromJson(json['horseSetup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChoreDetailsToJson(_$_ChoreDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ownerId': instance.ownerId,
      'feed': instance.feed,
      'preformStabelingOrTurnOut': instance.preformStabelingOrTurnOut,
      'horseSetup': instance.horseSetup.toJson(),
    };

_$_HorseConfiguration _$$_HorseConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_HorseConfiguration(
      insideSetup:
          HorseSetup.fromJson(json['insideSetup'] as Map<String, dynamic>),
      outsideSetup:
          HorseSetup.fromJson(json['outsideSetup'] as Map<String, dynamic>),
      concentrates: $enumDecodeNullable(
          _$HorseConcentrateFeedEnumMap, json['concentrates']),
    );

Map<String, dynamic> _$$_HorseConfigurationToJson(
        _$_HorseConfiguration instance) =>
    <String, dynamic>{
      'insideSetup': instance.insideSetup.toJson(),
      'outsideSetup': instance.outsideSetup.toJson(),
      'concentrates': _$HorseConcentrateFeedEnumMap[instance.concentrates],
    };

const _$HorseConcentrateFeedEnumMap = {
  HorseConcentrateFeed.none: 'none',
  HorseConcentrateFeed.morning: 'morning',
  HorseConcentrateFeed.afternoon: 'afternoon',
  HorseConcentrateFeed.evening: 'evening',
  HorseConcentrateFeed.night: 'night',
};

_$InsideHorseSetup _$$InsideHorseSetupFromJson(Map<String, dynamic> json) =>
    _$InsideHorseSetup(
      cover: $enumDecode(_$HorseCoverSetupEnumMap, json['cover']),
      protection:
          $enumDecode(_$HorseProtectionSetupEnumMap, json['protection']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InsideHorseSetupToJson(_$InsideHorseSetup instance) =>
    <String, dynamic>{
      'cover': _$HorseCoverSetupEnumMap[instance.cover],
      'protection': _$HorseProtectionSetupEnumMap[instance.protection],
      'type': instance.$type,
    };

const _$HorseCoverSetupEnumMap = {
  HorseCoverSetup.none: 'none',
  HorseCoverSetup.summer: 'summer',
  HorseCoverSetup.winter: 'winter',
};

const _$HorseProtectionSetupEnumMap = {
  HorseProtectionSetup.none: 'none',
  HorseProtectionSetup.back: 'back',
  HorseProtectionSetup.front: 'front',
  HorseProtectionSetup.both: 'both',
};

_$OutSideHorseSetup _$$OutSideHorseSetupFromJson(Map<String, dynamic> json) =>
    _$OutSideHorseSetup(
      cover: $enumDecode(_$HorseCoverSetupEnumMap, json['cover']),
      protection:
          $enumDecode(_$HorseProtectionSetupEnumMap, json['protection']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OutSideHorseSetupToJson(_$OutSideHorseSetup instance) =>
    <String, dynamic>{
      'cover': _$HorseCoverSetupEnumMap[instance.cover],
      'protection': _$HorseProtectionSetupEnumMap[instance.protection],
      'type': instance.$type,
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
