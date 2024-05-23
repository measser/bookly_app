import 'package:bookly_app/core/widgets/custom_Loading_widget.dart';
import 'package:bookly_app/core/widgets/custom_error_massage_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
       if(state is NewsetBooksSuccess){
         return ListView.builder(
           padding: EdgeInsets.zero,
           physics: const NeverScrollableScrollPhysics(),
           itemCount: state.books.length,
           itemBuilder: (context, index) =>
            Padding(
             padding:const EdgeInsets.symmetric(vertical: 10),
             child: BestSellerListViewItems(
               booksModel:state.books[index],
             ),
           ),
         );
       }else if(state is NewsetBooksFailure){
         return CustomErrorMassageWidget(errorMassage: state.errMassage);
       }else{
         return const CustomLoadingWidget();
       }
      },
    );
  }
}