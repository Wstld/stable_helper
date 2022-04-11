import 'package:flutter/material.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/core/theme/themes.dart';

class UserHomeContainerNonMember extends StatelessWidget {
  const UserHomeContainerNonMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          verticalSpaceExtraLarge,
          Text(
            notAMemberTxt,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
