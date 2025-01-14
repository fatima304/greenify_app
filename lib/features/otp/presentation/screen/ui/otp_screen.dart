import 'package:flutter/material.dart';
import 'package:greenify_app/features/otp/presentation/screen/widgets/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpBody(),
    );
  }
}
