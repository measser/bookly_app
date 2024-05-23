import 'package:bookly_app/core/units/api_service.dart';
import 'package:bookly_app/core/units/servive_locator.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/search_repos_impl.dart';
import 'package:bookly_app/features/search/presentation/manager/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(HomeReposImpl(ApiService(Dio()))),
          child: BookDetailsView(
            booksModel: state.extra as BooksModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBooksCubit(
            SearchReposImpl(
              ApiService(
                Dio(),
              ),
            ),
          ),
          child: const SearchView(
            searchBooks:'python',
          ),
        ),
      ),
    ],
  );
}
