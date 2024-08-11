import 'package:mobile_app_task/screens/post_screen/data/post_model/post_model.dart';
import 'package:mobile_app_task/utilis/api_service.dart';
import 'package:mobile_app_task/utilis/generics.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>>fetchPosts();
}

class PostRemoteDataSourceImp extends PostRemoteDataSource {

  Generics generics = Generics();
  final ApiService apiService;
  PostRemoteDataSourceImp({required this.apiService});

  @override
  Future<List<PostModel>> fetchPosts() async{
    List<dynamic> data = await apiService.get(endPoint: 'posts');
    return generics.mapItems<PostModel>(data, (json) => PostModel.fromJson(json));
  }

}