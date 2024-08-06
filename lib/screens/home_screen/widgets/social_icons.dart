import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> firstRowIcons = socialIconData.sublist(0, 3);
    final List<Map<String, dynamic>> secondRowIcons = socialIconData.sublist(3);

    return Padding(
      padding: const EdgeInsets.only(
          top: socialIconsPadding, bottom: socialIconsPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: firstRowIcons
                .map((data) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: SocialIcon(
                path: data['path'],
                icon: data['icon'],
              ),
            ))
                .toList(),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: secondRowIcons
                .map((data) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: SocialIcon(
                path: data['path'],
                icon: data['icon'],
              ),
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.path,
    required this.icon,
  });

  final String path;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Uri(path: path);
      },
      child: icon,
    );
  }
}
