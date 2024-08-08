import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_task/constants.dart';
import 'package:mobile_app_task/screens/post_screen/widgets/post_title_and_description.dart';
import 'package:mobile_app_task/screens/widgets/customized_app_bar.dart';

import '../widgets/profile_icon.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar('Posts'),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Post(
                profilePic: const Icon(CupertinoIcons.profile_circled),
                username: 'Mohamed',
                title:
                    'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
                body:
                    'quia et suscipit suscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto');
          },
        ));
  }
}

class Post extends StatelessWidget {
  Post(
      {super.key,
      required this.profilePic,
      required this.username,
      required this.title,
      required this.body});
  Icon profilePic;
  String username;
  String title;
  String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 3,
            style: BorderStyle.solid,
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  ProfileIcon(
                    username: username,
                    vertical: false,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz,
                  )
                ],
              ),
              PostTitleAndDescription(
                title: title,
                body: body,
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(children: postButtons),
              )
            ],
          ),
        ),
      ),
    );
  }
}
