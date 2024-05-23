import 'package:bookly_app/features/home/presentation/views/widgets/details_widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/units/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w700
            )
        ),
        const SizedBox(height: 16,),
        const SimilarBooksListview(),
      ],
    );
  }
}