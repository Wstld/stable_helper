import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';

class StablesChoreController extends GetxController {
  StablesChoreController(this._authController, this._firestoreRepo);
  final AuthController _authController;
  final FirestoreRepo _firestoreRepo;
  Rxn<User> assignee = Rxn();

  Future<User?> fetchAssignee(String userId) async {
    try {
      User user = await _firestoreRepo.fetchUserData(userId);
      assignee.value = user;
    } catch (e) {
      return null;
      //display msg
    }
    return null;
  }
}
