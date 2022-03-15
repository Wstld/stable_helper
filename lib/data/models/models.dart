import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stable_helper/core/constants/enums.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class User with _$User {
  factory User({
    required UserType type,
    required String userId,
    required String firstname,
    required String lastname,
    String? phoneNumber,
    String? email,
    String? stablesId,
    List<Horse>? horses,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Horse with _$Horse {
  factory Horse({
    required String id,
    required String name,
    required String ownerId,
    List<String>? extraRiders,
  }) = _Horse;

  factory Horse.fromJson(Map<String, dynamic> json) => _$HorseFromJson(json);
}

@freezed
class Stables with _$Stables {
  factory Stables({
    required String id,
    required String displayName,
    List<String>? members,
    StablesSchedule? schedule,
  }) = _Stables;

  factory Stables.fromJson(Map<String, dynamic> json) =>
      _$StablesFromJson(json);
}

@freezed
class StablesSchedule with _$StablesSchedule {
  factory StablesSchedule({
    required List<StableChore> monday,
    required List<StableChore> tuesday,
    required List<StableChore> wednesday,
    required List<StableChore> thursday,
    required List<StableChore> friday,
    required List<StableChore> saturday,
    required List<StableChore> sunday,
  }) = _StablesSchedule;

  factory StablesSchedule.fromJson(Map<String, dynamic> json) =>
      _$StablesScheduleFromJson(json);
}

abstract class StablesChoreBase {
  String get time;
  String get displayName;
  String? get assingneeId;
  set assingneeId(String? val);
}

@Freezed(unionKey: 'type')
@Implements<StablesChoreBase>()
class StableChore with _$StableChore {
  @FreezedUnionValue('turnout')
  const factory StableChore.turnOut(
      {required String time,
      required String displayName,
      String? assingneeId}) = TurnOut;
  @FreezedUnionValue('stableing')
  const factory StableChore.stableing(
      {required String time,
      required String displayName,
      String? assingneeId}) = Stableing;
  @FreezedUnionValue('feeding')
  const factory StableChore.feeding(
      {required String time,
      required String displayName,
      String? assingneeId}) = Feeding;

  factory StableChore.fromJson(Map<String, dynamic> json) =>
      _$StableChoreFromJson(json);
}

@freezed
class StableWork with _$StableWork {
  factory StableWork({
    required Days day,
    required String time,
    required String displayName,
  }) = _StableWork;

  factory StableWork.fromJson(Map<String, dynamic> json) =>
      _$StableWorkFromJson(json);
}
