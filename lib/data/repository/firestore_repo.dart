import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stable_helper/core/constants/enums.dart';

class FirestoreRepo {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot> getUserDataStream(String userId) {
    CollectionReference userData =
        firebaseFirestore.collection(FirebaseCollections.userData.getName);
    return userData.doc(userId).snapshots();
  }
}
