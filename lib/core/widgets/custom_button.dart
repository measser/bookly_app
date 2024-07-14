import 'package:bookly_app/core/units/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.borderRadius, required this.text, required this.backgroundColor, required this.textcolor, this.onPressed});

  final String text;
  final Color backgroundColor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:48 ,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius?? BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style:Styles.textStyle20.copyWith(
             color:  textcolor,
              fontWeight: FontWeight.w900
            ),
          )),
    );
  }
}
