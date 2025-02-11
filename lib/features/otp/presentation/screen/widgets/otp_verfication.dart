import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/features/otp/presentation/screen/widgets/otp_body.dart';
import 'package:greenify_app/features/register/presentation/screen/widgets/textfield_part.dart';

class OtpVerfication extends StatelessWidget {
  const OtpVerfication({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpBody(
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.otpCodeScreen);
      },
      buttonText: 'Get OTP',
      detailsText: 'We will send you OTP code, please enter\nyour phone number',
      verificationText: 'OTP Verification',
      customWidget: const TextfieldPart(
        hintText: 'Phone Number',
        labelText: 'Enter your phone number',
        prefixIcon: Icons.phone,
      ),
    );
  }
}
