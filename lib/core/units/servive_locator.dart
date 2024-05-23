import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repos/home_repos_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setUp(){
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),);
  getIt.registerSingleton<HomeReposImpl>(
    HomeReposImpl(
      getIt.get<ApiService>(),
    ),
  );
}