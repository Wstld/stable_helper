import 'package:flutter/material.dart';
import 'package:stable_helper/core/theme/themes.dart';

class UserHomeContainerNonMember extends StatelessWidget {
  const UserHomeContainerNonMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        verticalSpaceExtraLarge,
        Text(
          '''You are currently not a member at any stable, ask your stable manager to add you to their stable''',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
