import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/business_logic/navigation_bar_BL/navigation_bar_bloc.dart';
import 'package:mobile_app_task/constants.dart';
import 'package:mobile_app_task/screens/home_screen/home_screen.dart';
import 'package:mobile_app_task/screens/post_screen/post_screen.dart';
import 'package:mobile_app_task/screens/user_screen/users_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(state.tabIndex),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.blue,
            currentIndex: state.tabIndex,
            onTap: (index) {
              BlocProvider.of<NavigationBarBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
            items: navigationBarItems
          ),
        );
      },
    );
  }

  Widget _buildBody(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const UserScreen();
      case 2:
        return const PostScreen();
      default:
        return const HomeScreen();
    }
  }
}
