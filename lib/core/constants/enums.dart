import 'package:json_annotation/json_annotation.dart';

enum LoginFormType { register, login }

enum FirebaseCollections { users, stables }

enum Days {
  @JsonValue('monday')
  monday,
  @JsonValue('tuesday')
  tuesday,
  @JsonValue('wednesday')
  wednesday,
  @JsonValue('thursday')
  thursday,
  @JsonValue('friday')
  friday,
  @JsonValue('saturday')
  saturday,
  @JsonValue('sunday')
  sunday,
}

enum UserType {
  @JsonValue('user')
  user,
  @JsonValue('owner')
  owner,
}

enum StableChoreTypes {
  turnout,
  stableing,
  feeding,
}

extension FirebaseCollectionExtensions on FirebaseCollections {
  String get getName {
    switch (this) {
      case FirebaseCollections.users:
        return 'users';
      case FirebaseCollections.stables:
        return 'stables';
    }
  }
}
