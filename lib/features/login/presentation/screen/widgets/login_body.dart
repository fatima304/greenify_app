import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/auth_section.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/login_section.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back!',
            style: AppTextStyle.font35DarkGreenRegular.copyWith(
              fontSize: 33,
              color: const Color.fromARGB(255, 13, 136, 95),
              fontFamily: FontFamilyHelper.montagaFont,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const LoginSection(),
          const AuthSection(),
        ],
      ),
    );
  }
}
