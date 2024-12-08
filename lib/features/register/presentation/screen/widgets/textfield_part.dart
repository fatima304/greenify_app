import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/widgets/shared_textfield.dart';

class TextfieldPart extends StatelessWidget {
  const TextfieldPart(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.labelText});

  final String hintText;
  final String? labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: AppTextStyle.font16DarkGreenMedium
              .copyWith(fontFamily: FontFamilyHelper.montaguSlabFont),
        ),
        const SizedBox(
          height: 10,
        ),
        SharedTextField(
          hintText: labelText ?? hintText,
          prefixIcon: prefixIcon,
        ),
      ],
    );
  }
}
