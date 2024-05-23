import 'package:bookly_app/features/search/presentation/manager/search_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.searchBooks});
final String searchBooks;
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks(bookSearch:widget.searchBooks );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
