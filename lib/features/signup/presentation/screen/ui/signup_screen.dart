import 'package:flutter/material.dart';
import 'package:greenify_app/features/signup/presentation/screen/widgets/footer_part.dart';
import 'package:greenify_app/features/signup/presentation/screen/widgets/header_section.dart';
import 'package:greenify_app/features/signup/presentation/screen/widgets/social_part.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 43, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderSection(),
              SocialPart(),
              FooterPart(),
            ],
          ),
        ),
      ),
    );
  }
}
