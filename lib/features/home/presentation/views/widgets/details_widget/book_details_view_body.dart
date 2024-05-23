import 'package:bookly_app/core/units/styles.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/details_widget/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/details_widget/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/details_widget/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.booksModel});

  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomBookDetailsViewAppBar(),
              const SizedBox(
                height: 20,
              ),
              BooksDetailsSection(
                booksModel:booksModel ,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBooksSection(),
              const SizedBox(height: 60,)
            ],
          ),
        )
      ],
    );
  }
}




