import 'package:flutter/material.dart';
import 'package:greenify_app/core/constants/app_images.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/widgets/shared_button.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({
    super.key,
    this.img,
    this.customWidget,
    required this.onPressed,
    required this.buttonText,
    required this.detailsText,
    required this.verificationText,
  });

  final String? img;
  final Widget? customWidget;
  final void Function()? onPressed;
  final String buttonText, detailsText, verificationText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          spacing: 40,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            customArrowBack(context),
            Image.asset(img ?? AppImages.otp),
            Column(
              spacing: 10,
              children: [
                Text(
                  verificationText,
                  style: AppTextStyle.font28DarkGreenSemiBold.copyWith(
                    fontFamily: FontFamilyHelper.interFont,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  detailsText,
                  style: AppTextStyle.font18DarkGreenRegular.copyWith(
                    fontSize: 17,
                    color: AppColor.black.withOpacity(0.62),
                    fontFamily: FontFamilyHelper.interFont,
                  ),
                ),
              ],
            ),
            if (customWidget != null) customWidget!,
            SharedButton(
              onPressed: onPressed,
              text: Text(
                buttonText,
                style: AppTextStyle.font20WhiteMedium.copyWith(
                  fontSize: 24,
                  fontFamily: FontFamilyHelper.interFont,
                ),
              ),
              buttonColor: AppColor.darkGreen,
            ),
          ],
        ),
      ),
    );
  }
}

Align customArrowBack(BuildContext context) {
  return Align(
    alignment: Alignment.topLeft,
    child: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppColor.primGreen,
      ),
    ),
  );
}
