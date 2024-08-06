import 'package:flutter/material.dart';
import 'package:mobile_app_task/app_router.dart';
import 'package:mobile_app_task/business_logic/navigation_bar_BL/navigation_bar_bloc.dart';
import 'package:mobile_app_task/screens/post_screen.dart';
import 'package:mobile_app_task/screens/home_screen.dart';
import 'package:mobile_app_task/screens/users_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eConnect',
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyan.shade200),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
            create: (BuildContext context) => NavigationBarBloc(),
            lazy: false,
            child: const HomeScreen()),
        '/userScreen': (context) => const UserScreen(),
        '/postScreen': (context) => const PostScreen(),
      },
    );
  }
}
