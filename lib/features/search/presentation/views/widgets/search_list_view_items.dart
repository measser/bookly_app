import 'package:bookly_app/core/widgets/custom_Loading_widget.dart';
import 'package:bookly_app/core/widgets/custom_error_massage_widget.dart';
import 'package:bookly_app/features/search/presentation/manager/search_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_view_items.dart';

class SearchListViewItems extends StatelessWidget {
  const SearchListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if(state is SearchBooksSuccess ){
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.booksModel.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: BestSellerListViewItems(
                    booksModel: state.booksModel[index],
                  ),
                ),
          );
        }else if(state is SearchBooksFailure){
          return const CustomErrorMassageWidget(errorMassage: 'Search Again',);
        }else{
          return const CustomLoadingWidget();
        }
      },
    );
  }
}