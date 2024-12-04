import 'package:flutter/material.dart';
import 'package:greenify_app/features/signup/presentation/screen/widgets/social_widget.dart';

class SocialPart extends StatelessWidget {
  const SocialPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SocialWidget(
          img: 'facebook',
          socialText: 'Facebook',
        ),
        SocialWidget(
          img: 'google',
          socialText: 'Google',
        ),
        SocialWidget(
          socialText: 'Apple',
        ),
      ],
    );
  }
}
