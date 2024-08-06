import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/business_logic/navigation_bar_BL/navigation_bar_bloc.dart';
import 'package:mobile_app_task/screens/home_screen.dart';
import 'package:mobile_app_task/screens/post_screen.dart';
import 'package:mobile_app_task/screens/users_screen.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocBuilder<NavigationBarBloc,NavigationBarState>(
      builder: (BuildContext context, NavigationBarState state) {
        if (state.tabIndex == 0) {
          return const HomeScreen();
        } else if (state.tabIndex == 1) {
          return const UserScreen();
        }
        else if (state.tabIndex == 2) {
          return const PostScreen();
        }
        return const HomeScreen();
      },
    );
    return const Scaffold(
      body: Center(
        child: Text('Error'),
      ),
    );
  }
}