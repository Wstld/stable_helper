import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stable_helper/core/constants/enums.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required UserType type,
    required String horseName,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
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
