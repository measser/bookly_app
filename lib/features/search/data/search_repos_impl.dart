import 'package:bookly_app/core/errors/fialures.dart';
import 'package:bookly_app/core/units/api_service.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/search/data/search_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchReposImpl extends SearchRepos{
   final ApiService apiService;

  SearchReposImpl(this.apiService);


  @override
  Future<Either<Failure, List<BooksModel>>> searchBooks({required String bookSearch}) async{
    try {
      var data = await apiService.get(
        endPoints: 'volumes?Filtering=free-books&q=$bookSearch',
      );
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}