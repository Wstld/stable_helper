// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      type: $enumDecode(_$UserTypeEnumMap, json['type']),
      horseName: json['horseName'] as String,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'type': _$UserTypeEnumMap[instance.type],
      'horseName': instance.horseName,
    };

const _$UserTypeEnumMap = {
  UserType.user: 'user',
  UserType.owner: 'owner',
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
