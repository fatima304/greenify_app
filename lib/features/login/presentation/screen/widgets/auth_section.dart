import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/logs_list.dart';

class AuthSection extends StatelessWidget {
  const AuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          '- OR Continue with -',
          style: AppTextStyle.font12LightGreyMedium
              .copyWith(fontFamily: FontFamilyHelper.latoFont),
        ),
        const SizedBox(
          height: 5,
        ),
        const LogsList(),
        const SizedBox(
          height: 50,
        ),
        RichText(
          text: TextSpan(
            text: 'Don\'t have account',
            style: AppTextStyle.font16DarkGreySemiBold.copyWith(
              fontFamily: FontFamilyHelper.latoFont,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign Up',
                style: AppTextStyle.font14PrimGreenSemiBold.copyWith(
                  fontFamily: FontFamilyHelper.latoFont,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, Routes.logScreen);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
