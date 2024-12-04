import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        dividerWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Or',
            style: AppTextStyle.font14BlackMedium
                .copyWith(fontFamily: FontFamilyHelper.interFont),
          ),
        ),
        dividerWidget()
      ],
    );
  }
}

Expanded dividerWidget() {
  return const Expanded(
    child: Divider(
      color: AppColor.lightGrey,
      thickness: 1.1,
    ),
  );
}
