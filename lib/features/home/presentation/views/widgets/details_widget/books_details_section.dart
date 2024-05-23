import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/units/styles.dart';
import '../book_rating.dart';
import '../featured_book_image.dart';
import 'books_actions.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.booksModel});
final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  FeaturedBookImage(
            booksModel: booksModel,
            imageUrl: booksModel.volumeInfo!.imageLinks?.thumbnail! ??'',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
           textAlign: TextAlign.center,
          booksModel.volumeInfo!.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          booksModel.volumeInfo!.authors![0],
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 25,
        ),
        const BooksActions()
      ],
    );
  }
}