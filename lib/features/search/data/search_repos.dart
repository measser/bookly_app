import 'package:bookly_app/core/errors/fialures.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepos{
  Future<Either<Failure,List<BooksModel>>> searchBooks({required String bookSearch});
}