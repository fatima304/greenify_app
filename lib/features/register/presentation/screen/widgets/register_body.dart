import 'package:flutter/material.dart';
import 'package:greenify_app/core/helper/app_images.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/register_section.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.register,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeText(),
              const RegisterSection(),
            ],
          ),
        )
      ],
    );
  }

  Padding welcomeText() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 24, top: 32),
      child: Text(
        'Welcome\n\nYou are one step away from\njoining a fantastic community.',
        style: AppTextStyle.font18WhiteRegular.copyWith(
          fontFamily: FontFamilyHelper.montaguSlabFont,
        ),
      ),
    );
  }
}
