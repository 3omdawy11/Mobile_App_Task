import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/screens/user_screen/data/user_model/UserModel.dart';
import 'package:mobile_app_task/screens/user_screen/manager/user_bloc.dart';
import 'package:mobile_app_task/screens/user_screen/widgets/user_info.dart';
import 'package:mobile_app_task/screens/widgets/profile_icon.dart';

import '../../constants.dart';
import '../widgets/customized_app_bar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Users'),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoadingState) {
            print('Iam in the userloadingstate');
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserErrorState) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (state is UserLoadedState) {
            List<UserModel> users = state.users;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserPost(
                  username: users[index].username ?? 'Unknown Username',
                  name: users[index].name ?? 'Unknown Name',
                  email: users[index].email ?? 'Unknown Email',
                  address: users[index].address?.street ?? 'Unknown Address',
                );
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
  });

  final String username;
  final String name;
  final String email;
  final String address;

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
              ProfileIcon(
                username: username,
                vertical: true,
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
