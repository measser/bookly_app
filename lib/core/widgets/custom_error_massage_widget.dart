import 'package:bookly_app/core/units/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMassageWidget extends StatelessWidget {
  const CustomErrorMassageWidget({super.key, required this.errorMassage});
final String errorMassage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMassage,
        style: Styles.textStyle18,),
    );
  }
}
