import 'package:bookly_app/core/errors/fialures.dart';
import 'package:bookly_app/core/units/api_service.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepos {
  final ApiService apiService;

  HomeReposImpl( this.apiService);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoints: 'volumes?Filtering=free-books&q=subject:programming',
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

  @override
  Future<Either<Failure, List<BooksModel>>>fetchBestSellerBooks () async{
    try {
      var data = await apiService.get(
        endPoints: 'volumes?Filtering=free-books&q=computer science',
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

  @override
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks({required String category}) async{
    try {
      var data = await apiService.get(
        endPoints: 'volumes?Filtering=free-ebooks&q=subject:computer science&sorting=relevance',
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

