import 'dart:ffi';

import 'package:bookly_app/core/units/styles.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key ,this.mainAxisAlignment= MainAxisAlignment.start});



 final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        const SizedBox(width: 6.3,),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5,),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color:Colors.white.withOpacity(.5),fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}