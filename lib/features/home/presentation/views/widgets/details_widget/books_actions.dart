import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButton(
          backgroundColor: Colors.white,
          text: '19.99E',
          textcolor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        )),
        Expanded(child: CustomButton(
          backgroundColor: Color(0xffEF8262),
          text: '19.99E',
          textcolor: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        )),
      ],
    );
  }
}