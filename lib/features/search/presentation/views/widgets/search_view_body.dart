
import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),

                ),
                const SizedBox(width: 10,),
                const Expanded(child: CustomTextFormField(),),
              ],
            ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SearchListViewSection(),
        ))
      ],
    );
  }
}





