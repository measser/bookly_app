import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/units/api_service.dart';
import 'package:bookly_app/core/units/app_router.dart';
import 'package:bookly_app/core/units/servive_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeReposImpl(ApiService(Dio())),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            HomeReposImpl(ApiService(Dio())),
          )..fetchBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
