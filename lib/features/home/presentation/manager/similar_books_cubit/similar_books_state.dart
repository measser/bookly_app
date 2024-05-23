part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BooksModel> books;

  SimilarBooksSuccess(this.books);
}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errMassage;

  SimilarBooksFailure(this.errMassage);
}
