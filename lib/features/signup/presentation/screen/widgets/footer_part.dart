import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/widgets/shared_button.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/rich_text.dart';
import 'package:greenify_app/features/signup/presentation/screen/widgets/or_divider.dart';

class FooterPart extends StatelessWidget {
  const FooterPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const OrDivider(),
        const SizedBox(
          height: 40,
        ),
        SharedButton(
          text: Text(
            'Sign up with Password',
            style: AppTextStyle.font14WhiteMedium
                .copyWith(fontFamily: FontFamilyHelper.interFont),
          ),
          buttonColor: AppColor.primGreen,
        ),
        const SizedBox(
          height: 30,
        ),
        richText(
            context, 'Already have an account ', 'Log in', Routes.signScreen),
      ],
    );
  }
}
