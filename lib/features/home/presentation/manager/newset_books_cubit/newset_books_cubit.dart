import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repos.dart';
import 'package:meta/meta.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepos) : super(NewsetBooksInitial());

  final HomeRepos  homeRepos;

  Future<void> fetchBestSellerBooks() async{
    emit(NewsetBooksLoading());
    var result=await homeRepos.fetchBestSellerBooks();
    result.fold((failure){
      emit(NewsetBooksFailure(failure.errMassage));
    }, (books){
      emit(NewsetBooksSuccess(books));
    });
  }
}
