import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/widgets/shared_button.dart';
import 'package:greenify_app/core/widgets/shared_textfield.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SharedTextField(
          hintText: 'Username or Email',
          prefixIcon: Icons.person_rounded,
        ),
        SharedTextField(
          hintText: 'Enter your password',
          prefixIcon: Icons.lock_outline,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Forgot Password?',
            style: AppTextStyle.font14RedRegular
                .copyWith(fontFamily: FontFamilyHelper.latoFont),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SharedButton(
          buttonSize: const Size(250, 50),
          buttonColor: AppColor.primGreen,
          text: Text(
            'Log In',
            style: AppTextStyle.font14WhiteMedium
                .copyWith(fontFamily: FontFamilyHelper.interFont),
          ),
        ),
      ],
    );
  }
}
