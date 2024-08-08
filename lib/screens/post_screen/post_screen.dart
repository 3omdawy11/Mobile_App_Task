import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/constants.dart';
import 'package:mobile_app_task/screens/post_screen/data/post_model/post_model.dart';
import 'package:mobile_app_task/screens/post_screen/manager/post_bloc.dart';
import 'package:mobile_app_task/screens/post_screen/widgets/post_title_and_description.dart';
import 'package:mobile_app_task/screens/widgets/customized_app_bar.dart';

import '../widgets/profile_icon.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Posts'),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PostLoadedState) {
            List<PostModel> posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Post(
                  profilePic: const Icon(CupertinoIcons.profile_circled),
                  username: 'Mohamed',
                  title: posts[index].title ?? 'No Post',
                  body: posts[index].body ?? 'No Body',
                );
              },
            );
          } else if (state is PostErrorState) {
            return const Center(
              child: Text('Error'),
            );
          }
          return Container();
        },
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.profilePic,
    required this.username,
    required this.title,
    required this.body,
  });

  final Icon profilePic;
  final String username;
  final String title;
  final String body;

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
                  ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
