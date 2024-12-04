import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/helper/app_constants.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    super.key,
    this.img,
    required this.socialText,
  });

  final String? img;
  final String socialText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(left: 40),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(0.2),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          img != null
              ? Image.asset(
                  '${AppConstants.iconPath}$img.png',
                )
              : const Icon(
                  Icons.apple,
                  size: 31,
                  color: AppColor.darkGreen,
                ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Continue with $socialText',
            style: AppTextStyle.font14BlackMedium.copyWith(
              fontFamily: FontFamilyHelper.interFont,
            ),
          ),
        ],
      ),
    );
  }
}
