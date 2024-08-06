import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Column(
        children: [
          Icon(
            CupertinoIcons.profile_circled,
            size: profileIconSize,
          ),
          Text('Username')
        ],
      ),
    );
  }
}