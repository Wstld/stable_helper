import 'package:stable_helper/core/constants/enums.dart';

extension DateTimeExtension on DateTime {
  Days get getDay {
    switch (weekday) {
      case 1:
        return Days.monday;
      case 2:
        return Days.tuesday;
      case 3:
        return Days.wednesday;
      case 4:
        return Days.thursday;
      case 5:
        return Days.friday;
      case 6:
        return Days.saturday;
      case 7:
        return Days.sunday;
      default:
        return Days.monday;
    }
  }

  String get getDate {
    return '$day,$month,$year';
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension StringX on String {
  String get capitalized {
    if (length > 1) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    } else {
      return toUpperCase();
    }
  }
}
