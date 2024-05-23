part of 'search_books_cubit.dart';

@immutable
sealed class SearchBooksState {}

final class SearchBooksInitial extends SearchBooksState {}
final class SearchBooksLoading extends SearchBooksState {}
final class SearchBooksSuccess extends SearchBooksState {
  final List<BooksModel> booksModel;

  SearchBooksSuccess(this.booksModel);
}
final class SearchBooksFailure extends SearchBooksState {
  final String errMassage;

  SearchBooksFailure(this.errMassage);
}
