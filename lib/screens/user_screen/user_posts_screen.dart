import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_task/screens/post_screen/data/post_model/post_model.dart';
import 'package:mobile_app_task/screens/post_screen/post_screen.dart';
class UserPostScreen extends StatelessWidget {
  const UserPostScreen({super.key, required this.userPosts, required this.username});

  final String username;
  final List<PostModel> userPosts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$username's posts") ,
      ),
      body: ListView.builder(
        itemCount: userPosts.length,
        itemBuilder: (context, index) {
          return Post(
            profilePic: const Icon(CupertinoIcons.profile_circled),
            username: username,
            title: userPosts[index].title ?? 'No Post',
            body: userPosts[index].body ?? 'No Body',
          );
        },
      ),
    );
  }
}
