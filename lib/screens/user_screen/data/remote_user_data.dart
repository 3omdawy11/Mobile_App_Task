import 'package:mobile_app_task/screens/user_screen/data/user_model/UserModel.dart';
import 'package:mobile_app_task/utilis/api_service.dart';
import 'package:mobile_app_task/utilis/generics.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> fetchUsers();
}

class UserRemoteDataSourceImp implements UserRemoteDataSource {
  Generics generics = Generics();
  final ApiService apiService;
  UserRemoteDataSourceImp ({required this.apiService});

  @override
  Future<List<UserModel>> fetchUsers() async{
    List<dynamic> data = await apiService.get(endPoint: 'users') ;
    print('$data has arrived');
    return generics.mapItems<UserModel>(data, (json) => UserModel.fromJson(json));
  }



}
