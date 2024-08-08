import 'package:flutter/material.dart';

import '../../../constants.dart';

class PostTitleAndDescription extends StatelessWidget {
  const PostTitleAndDescription({
    super.key,
    required this.title,
    required this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            title,
            style: postTitleTextStyle,
            maxLines: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            body,
            style: postBodyTextStyle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}