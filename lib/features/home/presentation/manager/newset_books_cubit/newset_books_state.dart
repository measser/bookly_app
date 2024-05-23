part of 'newset_books_cubit.dart';

@immutable
sealed class NewsetBooksState  {

}

final class NewsetBooksInitial extends NewsetBooksState {

}

class NewsetBooksLoading extends NewsetBooksState {}
class NewsetBooksSuccess extends NewsetBooksState {
  final List<BooksModel> books;

   NewsetBooksSuccess(this.books);
}
class NewsetBooksFailure extends NewsetBooksState {
  final String errMassage;

   NewsetBooksFailure(this.errMassage);

}
