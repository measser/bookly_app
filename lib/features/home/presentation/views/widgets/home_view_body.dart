import 'package:bookly_app/core/units/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_items.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturesBookListView(),
              SizedBox(
                height: 50,
              ),
              Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),),
          SliverFillRemaining(child:  BestSellerListView(),),
        ],
      ),
    );
  }
}
