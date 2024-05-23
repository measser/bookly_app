import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/search/data/search_repos.dart';
import 'package:bookly_app/features/search/data/search_repos_impl.dart';
import 'package:meta/meta.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepos) : super(SearchBooksInitial());
  final SearchRepos searchRepos;

  Future<void> fetchSearchBooks({required String bookSearch}) async {
    emit(SearchBooksLoading());
    var result = await searchRepos.searchBooks(bookSearch: bookSearch);
    result.fold(
      (failure) => emit(
        SearchBooksFailure(failure.errMassage),
      ),
      (books) => emit(
        SearchBooksSuccess(books),
      ),
    );
  }
}
