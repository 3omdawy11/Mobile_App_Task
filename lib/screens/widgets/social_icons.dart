import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
    required this.iconSize,
  });

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: socialIconsPadding,bottom: socialIconsPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Uri(path: '');
                },
                child: Icon(
                  FontAwesomeIcons.facebook,
                  size: iconSize,
                  color: Colors.blue.shade800,
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  Uri(path: '');
                },
                child: Icon(
                  FontAwesomeIcons.instagram,
                  size: iconSize,
                  color: Colors.pink.shade700,
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  Uri(path: '');
                },
                child: Icon(
                  Icons.email_outlined,
                  size: iconSize,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Uri(path: '');
                },
                child: Icon(
                  FontAwesomeIcons.linkedinIn,
                  size: iconSize,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Uri(path: '');
                },
                child: Icon(
                  Icons.web,
                  size: iconSize,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Uri(path: '');
                },
                child: Icon(
                  Icons.phone,
                  size: iconSize,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}