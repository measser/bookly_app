import 'package:bookly_app/core/widgets/custom_Loading_widget.dart';
import 'package:bookly_app/core/widgets/custom_error_massage_widget.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/app_router.dart';

class FeaturesBookListView extends StatelessWidget {
  const FeaturesBookListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {
    if(state is FeaturedBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height *.3,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: state.books.length,
          itemBuilder: (context,index)=> Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 30),
            child: FeaturedBookImage(
              booksModel: state.books[index],
              imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
            ),
          ),

        ),
      );
    }else if (state is FeaturedBooksFailure){
      return CustomErrorMassageWidget(errorMassage: state.errMassage);
    }else{
      return const CustomLoadingWidget();
    }
  },
);
  }
}