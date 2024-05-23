import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepos) : super(FeaturedBooksInitial());

  final HomeRepos  homeRepos;

  Future<void> fetchFeaturedBooks() async{
    emit(FeaturedBooksLoading());
    var result=await homeRepos.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksFailure(failure.errMassage));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
