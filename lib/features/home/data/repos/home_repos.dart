import 'package:bookly_app/core/errors/fialures.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos{
  Future<Either<Failure,List<BooksModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BooksModel>>> fetchBestSellerBooks();
  Future<Either<Failure,List<BooksModel>>> fetchSimilarBooks({required String category});
}