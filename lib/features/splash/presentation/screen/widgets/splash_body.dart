import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../../core/routes/routes.dart';
import 'package:greenify_app/core/helper/app_images.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  _startDelay() {
    Timer(
      const Duration(seconds: 5),
      _goNext,
    );
  }

  _goNext() {
    Navigator.of(context).pushReplacementNamed(Routes.onBoardingScreen);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppImages.logo),
    );
  }
}
