import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launcherCustomUrl(context,String url)async{
  if(url != (null)){

    Uri uri = Uri.parse(url);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri);
    }else{
      customSnakeBar(context, 'cannot launch $url');
    }
  }
}

void customSnakeBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(text,style:Styles.textStyle14.copyWith(
      color: kPrimaryColor
    ),)),
  );
}