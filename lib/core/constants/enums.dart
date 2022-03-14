import 'package:json_annotation/json_annotation.dart';

enum LoginFormType { register, login }

enum FirebaseCollections {
  userData,
}

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

extension FirebaseCollectionExtensions on FirebaseCollections {
  String get getName {
    switch (this) {
      case FirebaseCollections.userData:
        return 'user_data';
    }
  }
}
