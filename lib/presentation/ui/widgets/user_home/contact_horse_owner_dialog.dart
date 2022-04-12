import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/core/theme/colors.dart';
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
        builder: ((controller) => controller.obx((state) => Dialog(
              backgroundColor: ShColors.lighterBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpaceMedium,
                  Text(
                    "${state!.firstname.capitalized} ${state.lastname.capitalized}",
                    style: Get.textTheme.titleLarge,
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  verticalSpaceRegular,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: ShColors.lightBlue,
                        elevation: 4,
                        borderRadius: BorderRadius.circular(5),
                        child: IconButton(
                          onPressed: () => controller.callOwner(
                              number: state.phoneNumber ?? ''),
                          icon: const Icon(Icons.phone),
                          iconSize: 50,
                        ),
                      ),
                      horizontalSpaceRegular,
                      Material(
                        color: ShColors.lightBlue,
                        elevation: 4,
                        borderRadius: BorderRadius.circular(5),
                        child: IconButton(
                          onPressed: () => controller.textOwner(
                              number: state.phoneNumber ?? ''),
                          icon: const Icon(Icons.email),
                          iconSize: 50,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceLarge,
                  SizedBox(
                    width: Get.width * 0.3,
                    child: ElevatedButton(
                        onPressed: () => Get.back(),
                        child: const Text('close')),
                  ),
                  verticalSpaceExtraLarge,
                ],
              ),
            ))));
  }
}
