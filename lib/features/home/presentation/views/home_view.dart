import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Padding(
      padding:  EdgeInsets.only(right:30 ,left: 30,top: 20),
      child: HomeViewBody(),
    ));
  }
}
