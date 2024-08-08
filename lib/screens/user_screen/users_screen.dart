import 'package:flutter/material.dart';
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const UserPost();
        },
      ),
    );
  }
}

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileIcon(
                username: 'username',
                vertical: true,
              ),
              const UserInfo(
                name: 'Mohamed Emad',
                email: 'mohamedzaky970@gmail.com',
                address: 'Cairo, Egypt',
              )
            ],
          ),
        ),
      ),
    );
  }
}
