import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/textfield_section.dart';

class RegisterPart extends StatelessWidget {
  const RegisterPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Register',
            style: AppTextStyle.font35DarkGreenRegular
                .copyWith(fontFamily: FontFamilyHelper.baskervvilleFont),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextFieldSection(),
      ],
    );
  }
}
