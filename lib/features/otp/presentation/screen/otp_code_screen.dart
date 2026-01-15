import 'package:flutter/material.dart';
import 'package:greenify_app/core/helper/extensions.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/features/otp/presentation/screen/widgets/otp_body.dart';
import 'package:greenify_app/features/otp/presentation/screen/widgets/otp_field.dart';

class OtpCodeScreen extends StatelessWidget {
  const OtpCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpBody(
        onPressed: () {
             context.pushNamed(
                    Routes.otpSuccessScreen,
                  );
        },
        customWidget: const OtpField(),
        buttonText: 'Verify',
        detailsText: 'Enter the OTP sent to 012*******5',
        verificationText: 'Enter Verification Code',
      ),
    );
  }
}
