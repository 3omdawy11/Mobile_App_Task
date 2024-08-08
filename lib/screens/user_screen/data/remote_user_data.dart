import 'package:mobile_app_task/screens/user_screen/data/user_model/UserModel.dart';
import 'package:mobile_app_task/utilis/api_service.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> fetchUsers();
}

class UserRemoteDataSourceImp implements UserRemoteDataSource {

  final ApiService apiService;
  UserRemoteDataSourceImp ({required this.apiService});

  @override
  Future<List<UserModel>> fetchUsers() async{
    List<dynamic> data = await apiService.get(endPoint: 'users') ;
    print('$data has arrived');
    return mapUsers(data);
  }

  List<UserModel> mapUsers (List<dynamic> data) {
    List<UserModel> users = [];
    for (var user in data) {
      users.add(UserModel.fromJson(user));
    }
    return users;
  }

}

// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:http/http.dart';
// import 'package:mobile_app_task/screens/user_screen/data/user_model/UserModel.dart';
//
// class UserRepository {
//   String baseUrl = 'https://jsonplaceholder.typicode.com/users';
//
//   Future<List<UserModel>> getUsers() async {
//      Response response = await get(Uri.parse(userUrl));
//
//     if (response.statusCode == 200) {
//       final List result = jsonDecode(response.body)['data'];
//       return result.map((e) => UserModel.fromJson(e)).toList();
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }