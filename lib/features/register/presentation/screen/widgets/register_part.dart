import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';

class RegisterPart extends StatelessWidget {
  const RegisterPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Register',
            style: AppTextStyle.font37WhiteBold.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
