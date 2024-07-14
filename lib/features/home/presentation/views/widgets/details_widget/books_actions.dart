import 'package:bookly_app/core/units/function/lanch_url.dart';
import 'package:bookly_app/features/home/data/models/Books_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: CustomButton(
          backgroundColor: Colors.white,
          text: 'Free',
          textcolor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        )),
        Expanded(child: CustomButton(
          onPressed: (){
            launcherCustomUrl(context, booksModel.volumeInfo!.previewLink!);

          },
          backgroundColor: const Color(0xffEF8262),
          text: getText(booksModel),
          textcolor: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        )),
      ],
    );
  }

  String  getText(BooksModel booksModel){
    if(booksModel.volumeInfo!.previewLink == null){
      return 'Not Available';
    }else{
      return 'Preview';
    }
}
}