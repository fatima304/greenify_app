import 'package:flutter/material.dart';
import 'package:greenify_app/core/helper/app_images.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/widgets/shared_button.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/textfield_part.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Align(
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
          ),
          Image.asset(AppImages.otp),
          const SizedBox(
            height: 50,
          ),
          Text(
            'OTP Verification',
            style: AppTextStyle.font30DarkGreenSemiBold.copyWith(
              fontFamily: FontFamilyHelper.interFont,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'We will send you OTP code, please enter',
            style: AppTextStyle.font18DarkGreenRegular.copyWith(
              fontSize: 17,
              color: AppColor.black.withOpacity(0.62),
              fontFamily: FontFamilyHelper.interFont,
            ),
          ),
          Text(
            'your phone number',
            style: AppTextStyle.font18DarkGreenRegular.copyWith(
              fontSize: 17,
              color: AppColor.black.withOpacity(0.6),
              fontFamily: FontFamilyHelper.interFont,
            ),
          ),
          const TextfieldPart(
            hintText: 'Phone Number',
            labelText: 'Enter your phone number',
            prefixIcon: Icons.phone,
          ),
          SharedButton(
            text: Text(
              'Get OTP',
              style: AppTextStyle.font20WhiteMedium.copyWith(
                // fontSize: 24,
                fontFamily: FontFamilyHelper.interFont,
              ),
            ),
            buttonColor: AppColor.darkGreen,
          ),
        ],
      ),
    );
  }
}
