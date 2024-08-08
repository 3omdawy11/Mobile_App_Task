
import 'package:mobile_app_task/screens/user_screen/user_model/UserModel.dart';
import 'package:mobile_app_task/utilis/api_service.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> fetchUsers();
}

class UserRemoteDataSourceImp implements UserRemoteDataSource {

  final ApiService apiService;
  UserRemoteDataSourceImp ({required this.apiService});

  @override
  Future<List<UserModel>> fetchUsers() async{
   var data = await apiService.get(endPoint: 'users') ;
   return mapUsers(data);
  }

  List<UserModel> mapUsers (Map<String, dynamic> data) {
    List<UserModel> users = [];
    for (var user in data['']) {
      users.add(UserModel.fromJson(user));
    }
    return users;
  }

}