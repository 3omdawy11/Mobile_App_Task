import 'package:dio/dio.dart';

class ApiService{
  final Dio _dio;
  final baseUrl = "https://jsonplaceholder.typicode.com/";

  ApiService(this._dio);

  Future<List<dynamic>> get ({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }
}