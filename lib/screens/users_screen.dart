import 'package:flutter/material.dart';
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
            Text('Your are now in the users screen')
        ],
      ),
    );
  }
}
