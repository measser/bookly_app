import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view_items.dart';
import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';

class SearchListViewSection extends StatelessWidget {
  const SearchListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Search Result',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchListViewItems()),
      ],
    );
  }
}