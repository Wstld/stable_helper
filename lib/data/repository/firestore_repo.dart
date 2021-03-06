import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/data/models/models.dart';

class FirestoreRepo {
  FirestoreRepo(this.firebaseFirestore)
      : users = firebaseFirestore.collection(FirebaseCollections.users.getName),
        stables =
            firebaseFirestore.collection(FirebaseCollections.stables.getName);

  FirebaseFirestore firebaseFirestore;
  CollectionReference stables;
  CollectionReference users;

  Stream<DocumentSnapshot> getUserDataStream(String userId) {
    return users.doc(userId).snapshots();
  }

  Stream<DocumentSnapshot> getStablesStream(String stablesId) {
    return stables.doc(stablesId).snapshots();
  }

  Future<User> fetchUserData(String userId) async {
    try {
      DocumentSnapshot response = await users.doc(userId).get();
      if (response.data() != null) {
        return User.fromJson(response.data() as Map<String, dynamic>);
      } else {
        throw Exception('no such user');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  void saveHorse(Horse horse, String userId) {
    users.doc(userId).update({'horses.${horse.id}': horse.toJson()});
  }

  Future<List<Horse>> fetchAllHorsesAtStables(
      List<String> membersList, String stablesId) async {
    List<User> owners = [];
    List<Horse> horses = [];
    await users
        .where(FieldPath.documentId, whereIn: membersList)
        .get()
        .then((response) {
      if (response.docs.isNotEmpty) {
        for (var element in response.docs) {
          owners.add(User.fromJson(element.data() as Map<String, dynamic>));
        }
        //check for horses stabled at users stable
      }
    });

    for (var owner in owners) {
      if (owner.horses != null) {
        owner.horses!.forEach((key, value) {
          if (value.stablesId != null && value.stablesId == stablesId) {
            horses.add(value);
          }
        });
      }
    }

    return horses;
  }

  void addData() {
    var doc = firebaseFirestore.collection('stables').doc().id;
    var normalDay = [
      const StableChore.turnOut(time: '07:30', displayName: 'Utsl??pp'),
      const StableChore.stableing(time: '13:00', displayName: 'Insl??pp'),
      const StableChore.feeding(time: '17:30', displayName: 'Middags Fodring'),
      const StableChore.feeding(time: '21:00', displayName: 'Kv??lls Fodring')
    ];

    Stables stables = Stables(
        id: doc,
        displayName: 'Annebergs g??rd',
        schedule: StablesSchedule(
            monday: normalDay,
            tuesday: normalDay,
            wednesday: normalDay,
            thursday: normalDay,
            friday: normalDay,
            saturday: normalDay,
            sunday: normalDay),
        members: ['yQCa8eiwRWYJnZ7GoDpweks76Ee2']);

    firebaseFirestore.collection('stables').doc(doc).set(stables.toJson());
  }

  void addUser() {
    User user = User(
        type: UserType.user,
        userId: 'yQCa8eiwRWYJnZ7GoDpweks76Ee2',
        firstname: 'Pontus',
        lastname: 'Westlund',
        stablesId: 'r1Pasc5DE3ZAbr7hnaga',
        phoneNumber: '07305522343',
        email: 'test@test.com');
    firebaseFirestore
        .collection('users')
        .doc('yQCa8eiwRWYJnZ7GoDpweks76Ee2')
        .set(user.toJson());
  }

  void saveTempHorseSettings(
      {required TemporaryHorseSetup temporaryHorseSetup,
      required String horseId,
      required String userId}) async {
    await users.doc(userId).update({
      'horses.$horseId.temporarySetup.${DateTime.now().getDate}':
          temporaryHorseSetup.toJson()
    });
  }

  void deleteHorse(String horseId, String userId) {
    users.doc(userId).update({'horses.$horseId': FieldValue.delete()});
  }

  void updateUserInfo(User userdData, String userId) {
    users.doc(userId).set(userdData.toJson(), SetOptions(merge: true));
  }

  Future<User> fetchUser(String userId) async {
    try {
      final response = await users.doc(userId).get();
      if (response.exists) {
        return User.fromJson(response.data() as Map<String, dynamic>);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Stables> fetchStables(String stablesId) async {
    try {
      final response = await stables.doc(stablesId).get();
      if (response.exists) {
        return Stables.fromJson(response.data() as Map<String, dynamic>);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  void removeUserFromCurrentStable(String userId) async {
    //remove stables id from user.
    final User user = await fetchUser(userId);
    Map<String, Horse> newHorses = user.horses!
        .map((key, value) => MapEntry(key, value.copyWith(stablesId: null)));
    final newUser = user.copyWith(horses: newHorses, stablesId: null);
    updateUserInfo(newUser, newUser.userId);

    //remove from stables. should be in be.
    final Stables newStables = await fetchStables(user.stablesId!);
    final int indexInMemberList =
        newStables.members!.indexWhere((element) => element == user.userId);
    newStables.members!.removeAt(indexInMemberList);

    stables.doc(user.stablesId).set(newStables.toJson());
  }
}
