import 'package:flutter/material.dart';
import 'package:greenify_app/core/constants/app_images.dart';
import 'package:greenify_app/features/otp/presentation/screen/widgets/otp_body.dart';

class OtpSuccessScreen extends StatelessWidget {
  const OtpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpBody(
        img: AppImages.success,
        onPressed: () {},
        buttonText: 'Ok',
        detailsText: 'Your account has been created',
        verificationText: 'Successfully',
      ),
    );
  }
}
