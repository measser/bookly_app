import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repos.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepos) : super(SimilarBooksInitial());

  final HomeRepos homeRepos;

  void fetchSimilarBooks({required String category}) async {
    var result = await homeRepos.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(SimilarBooksFailure(failure.errMassage)), (
        books) =>emit(SimilarBooksSuccess(books)));
  }
}
