import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_task/screens/home_screen/manager/navigation_bar_BL/navigation_bar_bloc.dart';
import 'package:mobile_app_task/screens/main_screen.dart';
import 'package:mobile_app_task/screens/post_screen/data/remote_post_data.dart';
import 'package:mobile_app_task/screens/post_screen/manager/post_bloc.dart';
import 'package:mobile_app_task/screens/user_screen/data/remote_user_data.dart';
import 'package:mobile_app_task/screens/user_screen/manager/user_bloc.dart';
import 'package:mobile_app_task/utilis/api_service.dart';

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
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) {
              final bloc = UserBloc(
                UserRemoteDataSourceImp(
                  apiService: ApiService(
                    Dio(),
                  ),
                ),
              );
              bloc.add(LoadUserEvent()); // Trigger loading the users
              return bloc;
            },
          ),
          BlocProvider(
            create: (context) => NavigationBarBloc(),
          ),
          BlocProvider(
            create: (BuildContext context) {
              final bloc = PostBloc(
                PostRemoteDataSourceImp(
                  apiService: ApiService(
                    Dio(),
                  ),
                ),
              );
              bloc.add(LoadPostEvent());
              return bloc;
            },
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
