import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/units/app_router.dart';
import 'package:bookly_app/core/units/assets.dart';
import 'package:bookly_app/core/units/styles.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key, required this.booksModel});

  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kDetailsView,
          extra: booksModel
        );
      },
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: FeaturedBookImage(
              booksModel: booksModel,
              imageUrl: booksModel.volumeInfo!.imageLinks?.thumbnail! ?? '',
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    booksModel.volumeInfo!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  booksModel.volumeInfo!.authors![0],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRating()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
