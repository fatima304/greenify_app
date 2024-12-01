import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/theme/font_weight_helper.dart';
import 'package:greenify_app/core/widgets/shared_button.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/register_fields.dart';
 
class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RegisterFields(),
        const SharedButton(),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: 'Already a member? ',
            style: AppTextStyle.font12DarkGreenMedium.copyWith(
              color: AppColor.green,
              fontFamily: FontFamilyHelper.montserratFont,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'log in',
                style: AppTextStyle.font12DarkGreenMedium.copyWith(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.montserratFont,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
