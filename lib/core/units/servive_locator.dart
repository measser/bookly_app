import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repos/home_repos_impl.dart';
import 'api_service.dart';

final locator = GetIt.instance;

Future<void> setUpLocator()async {
  locator.registerSingleton(()=>ApiService(Dio()));
  locator.registerLazySingleton(
        ()=> HomeReposImpl(locator<ApiService>()));
}