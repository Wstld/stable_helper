import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/contact_horse_owner_controller.dart';

class ContactHorseOwnerDialog extends StatelessWidget {
  final String ownerId;
  const ContactHorseOwnerDialog({Key? key, required this.ownerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactHorseOwnerController>(
        init: ContactHorseOwnerController(Get.find<FirestoreRepo>(), ownerId),
        builder: ((controller) => controller.obx((state) => Material(
              type: MaterialType.card,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpaceExtraLarge,
                  Text("${state!.firstname} ${state.lastname}"),
                  verticalSpaceLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => controller.callOwner(
                            number: state.phoneNumber ?? ''),
                        icon: const Icon(Icons.phone),
                        iconSize: 50,
                      ),
                      horizontalSpaceRegular,
                      IconButton(
                        onPressed: () => controller.textOwner(
                            number: state.phoneNumber ?? ''),
                        icon: const Icon(Icons.email),
                        iconSize: 50,
                      ),
                    ],
                  ),
                  horizontalSpaceRegular,
                  ElevatedButton(
                      onPressed: () => Get.back(), child: const Text('close'))
                ],
              ),
            ))));
  }
}
