import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/details_widget/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.booksModel});

  final BooksModel booksModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.booksModel.volumeInfo!.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(right:30 ,left: 30,top: 20),
        child: SafeArea(child: BookDetailsViewBody(
          booksModel: widget.booksModel,
        )),
      ) ,
    );
  }
}

