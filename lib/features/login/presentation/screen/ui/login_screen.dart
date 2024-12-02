import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.primGreen,
          ),
        ),
      ),
      body: const LoginBody(),
    );
  }
}
