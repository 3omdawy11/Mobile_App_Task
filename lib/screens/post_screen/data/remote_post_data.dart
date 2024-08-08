import 'package:mobile_app_task/screens/post_screen/data/post_model/post_model.dart';
import 'package:mobile_app_task/utilis/api_service.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>>fetchPosts();
}

class PostRemoteDataSourceImp extends PostRemoteDataSource {

  final ApiService apiService;
  PostRemoteDataSourceImp({required this.apiService});

  @override
  Future<List<PostModel>> fetchPosts() async{
    List<dynamic> data = await apiService.get(endPoint: 'posts');
    return mapPosts(data);
  }

  List<PostModel> mapPosts (List<dynamic>data) {
    List<PostModel> posts = [];
    for (var post in data) {
      posts.add(PostModel.fromJson(post));
    }
    return posts;
  }



}