part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState extends Equatable{
  const FeaturedBooksState();
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

 class FeaturedBooksInitial extends FeaturedBooksState {

}
 class FeaturedBooksLoading extends FeaturedBooksState {}
 class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BooksModel> books;

 const FeaturedBooksSuccess(this.books);
}
 class FeaturedBooksFailure extends FeaturedBooksState {
   final String errMassage;

   const  FeaturedBooksFailure(this.errMassage);
 }
