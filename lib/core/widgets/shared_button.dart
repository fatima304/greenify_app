import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';

class SharedButton extends StatelessWidget {
  const SharedButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(300, 60),
        ),
        backgroundColor: WidgetStatePropertyAll(AppColor.darkGreen),
      ),
      child: Text(
        'Sign Up',
        style: AppTextStyle.font20WhiteMedium
            .copyWith(fontFamily: FontFamilyHelper.montaguSlabFont),
      ),
    );
  }
}
