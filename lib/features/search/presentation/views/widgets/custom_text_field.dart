import 'package:bookly_app/features/search/presentation/manager/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      onChanged: (value) {
          BlocProvider.of<SearchBooksCubit>(context)
              .fetchSearchBooks(bookSearch: value);
      },
      decoration: InputDecoration(
        hintText: 'Search',
        enabledBorder: customOutLineInputBorder(),
        focusedBorder: customOutLineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ),
    );
  }

  OutlineInputBorder customOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white.withOpacity(.7)),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
