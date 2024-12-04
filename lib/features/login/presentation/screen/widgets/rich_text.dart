import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';

RichText richText(BuildContext context, String text1,text2,route){
  return  RichText(
          text: TextSpan(
            text: text1,
            style: AppTextStyle.font16DarkGreySemiBold.copyWith(
              fontFamily: FontFamilyHelper.latoFont,
            ),
            children: <TextSpan>[
              TextSpan(
                text: text2,
                style: AppTextStyle.font14PrimGreenSemiBold.copyWith(
                  fontFamily: FontFamilyHelper.latoFont,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, route);
                  },
              ),
            ],
          ),
        );
     
}