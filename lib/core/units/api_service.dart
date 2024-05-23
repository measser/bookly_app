import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class ApiService{
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);
  
  Future<Map<String,dynamic>> get({required String endPoints}) async{
    dio.interceptors.addAll([
      TalkerDioLogger(),
    ]);
   Response response= await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}