import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';

import '../widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.darkGreen,
      body: SplashBody(),
    );
  }
}
