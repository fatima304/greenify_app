import 'package:flutter/material.dart';
import 'package:greenify_app/core/helper/app_icon.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/log_item.dart';

class LogsList extends StatelessWidget {
  const LogsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LogItem(
          onTap: () {},
          img: AppIcon.google,
        ),
        LogItem(
          onTap: () {},
          img: AppIcon.face,
        ),
        LogItem(
          onTap: () {},
          img: AppIcon.apple,
        ),
      ],
    );
  }
}
