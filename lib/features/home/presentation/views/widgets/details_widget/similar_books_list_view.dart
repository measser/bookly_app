import 'package:bookly_app/core/widgets/custom_Loading_widget.dart';
import 'package:bookly_app/core/widgets/custom_error_massage_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../featured_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height *.15,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:state.books.length,
          itemBuilder: (context,index)=>  Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: FeaturedBookImage(
              booksModel: state.books[index],
              imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail! ,
            ),
          ),

        ),
      );
    }else if(state is SimilarBooksFailure){
      return CustomErrorMassageWidget(errorMassage: state.errMassage);
    }else{
      return const CustomLoadingWidget();
    }
  },
);
  }
}
