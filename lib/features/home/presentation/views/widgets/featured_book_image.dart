import 'package:bookly_app/core/units/app_router.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookImage extends StatelessWidget {
  const FeaturedBookImage({super.key, required this.imageUrl, required this.booksModel});

  final String imageUrl;
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kDetailsView,extra:booksModel );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: imageUrl,
              placeholder:(context,url)=> const Center(child: CircularProgressIndicator()),
              errorWidget:(context,url,error)=>const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
