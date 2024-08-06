import 'package:go_router/go_router.dart';
import 'package:mobile_app_task/screens/post_screen.dart';
import 'package:mobile_app_task/screens/home_screen/home_screen.dart';
import 'package:mobile_app_task/screens/user_screen/users_screen.dart';

class AppRouter {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(path: '/userScreen',
        builder: (context,state) => const UserScreen(),
      ),
      GoRoute(path: '/postScreen',
      builder: (context,state) => const PostScreen())
    ],
  );
}