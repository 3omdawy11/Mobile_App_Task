import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon(
      {super.key, required this.username, required this.vertical});
  final String username;
  final bool vertical;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: vertical
          ? Column(
              children: [
                const Icon(
                  CupertinoIcons.profile_circled,
                  size: profileIconSize,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(username,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis
                ),)
              ],
            )
          : Row(
              children: [
                const Icon(
                  CupertinoIcons.profile_circled,
                  size: profileIconSize,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(username)
              ],
            ),
    );
  }
}
