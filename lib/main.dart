import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/screens/home_screen/manager/navigation_bar_BL/navigation_bar_bloc.dart';
import 'package:mobile_app_task/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eConnect',
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyan.shade200),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NavigationBarBloc(),
        child: const MainScreen(),
      ),
    );
  }
}
