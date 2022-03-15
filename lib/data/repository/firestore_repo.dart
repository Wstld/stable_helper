import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/data/models/models.dart';

class FirestoreRepo {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot> getUserDataStream(String userId) {
    CollectionReference userData =
        firebaseFirestore.collection(FirebaseCollections.users.getName);
    return userData.doc(userId).snapshots();
  }

  void addData() {
    var doc = firebaseFirestore.collection('stables').doc().id;
    var normalDay = [
      const StableChore.turnOut(time: '07:30', displayName: 'Utsläpp'),
      const StableChore.stableing(time: '13:00', displayName: 'Insläpp'),
      const StableChore.feeding(time: '17:30', displayName: 'Middags Fodring'),
      const StableChore.feeding(time: '21:00', displayName: 'Kvälls Fodring')
    ];

    Stables stables = Stables(
        id: doc,
        displayName: 'Annebergs gård',
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
}
