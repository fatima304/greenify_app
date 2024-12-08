import 'package:flutter/material.dart';
import 'package:greenify_app/core/helper/app_images.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Image.asset(AppImages.signup),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Let\'s Get Started!',
                style: AppTextStyle.font20BlackMedium.copyWith(
                  fontFamily: FontFamilyHelper.robotoFont,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
    ],);
  }
}