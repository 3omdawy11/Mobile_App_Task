import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/screens/user_screen/user_posts_screen.dart';
import 'package:mobile_app_task/screens/user_screen/data/user_model/UserModel.dart';
import 'package:mobile_app_task/screens/user_screen/manager/user_bloc.dart';
import 'package:mobile_app_task/screens/post_screen/manager/post_bloc.dart';
import 'package:mobile_app_task/screens/user_screen/widgets/user_info.dart';
import 'package:mobile_app_task/screens/widgets/profile_icon.dart';

import '../../constants.dart';
import '../post_screen/data/post_model/post_model.dart';
import '../widgets/customized_app_bar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Users'),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, userState) {
          if (userState is UserLoadingState) {
            print('I am in the UserLoadingState');
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (userState is UserErrorState) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (userState is UserLoadedState) {
            List<UserModel> users = userState.users;

            return BlocBuilder<PostBloc, PostState>(
              builder: (context, postState) {
                if (postState is PostLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (postState is PostLoadedState) {
                  final posts = postState.posts;

                  // Here, you can use both `users` and `posts`
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      // Example: Access posts based on some logic
                      final userPosts = posts.where((post) => post.userId == users[index].id).toList();

                      return UserPost(
                        username: users[index].username ?? 'Unknown Username',
                        name: users[index].name ?? 'Unknown Name',
                        email: users[index].email ?? 'Unknown Email',
                        address: users[index].address?.street ?? 'Unknown Address',
                        posts: userPosts, // Pass the user's posts to the UserPost widget
                      );
                    },
                  );
                }
                if (postState is PostErrorState) {
                  return const Center(
                    child: Text('Error loading posts'),
                  );
                }
                return Container();
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}

class UserPost extends StatelessWidget {
  const UserPost({
    super.key,
    required this.username,
    required this.name,
    required this.email,
    required this.address,
    required this.posts,
  });

  final String username;
  final String name;
  final String email;
  final String address;
  final List<PostModel> posts; // Add the posts parameter

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  print('Clicking');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPostScreen(userPosts: posts, username: username),
                    ),
                  );

                },
                child: ProfileIcon(
                  username: username,
                  vertical: true,
                ),
              ),
              UserInfo(
                name: name,
                email: email,
                address: address,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
