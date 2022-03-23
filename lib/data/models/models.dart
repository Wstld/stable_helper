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
    Map<String, Horse>? horses,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Horse with _$Horse {
  factory Horse({
    required String id,
    required String ownerId,
    required String name,
    String? stablesId,
    required List<String>? extraRiders,
    required HorseConfiguration horseSetup,
    Map<String, TemporaryHorseSetup>? temporarySetup,
  }) = _Horse;

  factory Horse.fromJson(Map<String, dynamic> json) => _$HorseFromJson(json);
}

@freezed
class TemporaryHorseSetup with _$TemporaryHorseSetup {
  factory TemporaryHorseSetup({
    required DateTime timeStamp,
    required HorseSetup? insideSetup,
    required HorseSetup? outsideSetup,
    @Default(true) bool feed,
    @Default(false) bool keepInside,
    @Default(false) bool noFood,
    @Default(true) bool preformStabeling,
    @Default(true) bool preformTurnOut,
  }) = _TemporaryHorseSetup;

  factory TemporaryHorseSetup.fromJson(Map<String, dynamic> json) =>
      _$TemporaryHorseSetupFromJson(json);
}

@freezed
class ChoreDetails with _$ChoreDetails {
  factory ChoreDetails({
    required String name,
    required String ownerId,
    @Default(true) bool feed,
    @Default(true) bool preformStabelingOrTurnOut,
    required HorseSetup horseSetup,
  }) = _ChoreDetails;

  factory ChoreDetails.fromJson(Map<String, dynamic> json) =>
      _$ChoreDetailsFromJson(json);
}

@freezed
class HorseConfiguration with _$HorseConfiguration {
  factory HorseConfiguration({
    required HorseSetup insideSetup,
    required HorseSetup outsideSetup,
    HorseConcentrateFeed? concentrates,
  }) = _HorseConfiguration;

  factory HorseConfiguration.fromJson(Map<String, dynamic> json) =>
      _$HorseConfigurationFromJson(json);
}

abstract class HorseSetupBase {
  HorseProtectionSetup get protection;
  set protection(HorseProtectionSetup setup);
  HorseCoverSetup get cover;
  set cover(HorseCoverSetup setup);
}

@Freezed(unionKey: 'type')
@Implements<HorseSetupBase>()
class HorseSetup with _$HorseSetup {
  @FreezedUnionValue('inside')
  const factory HorseSetup.inside(
      {required HorseCoverSetup cover,
      required HorseProtectionSetup protection}) = InsideHorseSetup;
  @FreezedUnionValue('outside')
  const factory HorseSetup.outside(
      {required HorseCoverSetup cover,
      required HorseProtectionSetup protection}) = OutSideHorseSetup;

  factory HorseSetup.fromJson(Map<String, dynamic> json) =>
      _$HorseSetupFromJson(json);
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
  const StablesSchedule._();
  const factory StablesSchedule({
    required List<StableChore> monday,
    required List<StableChore> tuesday,
    required List<StableChore> wednesday,
    required List<StableChore> thursday,
    required List<StableChore> friday,
    required List<StableChore> saturday,
    required List<StableChore> sunday,
  }) = _StablesSchedule;

  List<StableChore> getTodaysSchedule(Days day) {
    switch (day) {
      case Days.monday:
        return monday;
      case Days.tuesday:
        return tuesday;
      case Days.wednesday:
        return wednesday;
      case Days.thursday:
        return thursday;
      case Days.friday:
        return friday;
      case Days.saturday:
        return saturday;
      case Days.sunday:
        return sunday;
    }
  }

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
