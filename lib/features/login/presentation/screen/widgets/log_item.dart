import 'package:flutter/material.dart';
import 'package:greenify_app/core/theme/app_color.dart';

class LogItem extends StatelessWidget {
  const LogItem({
    super.key,
    required this.img,
    required this.onTap,
  });

  final String img;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 28,
          backgroundColor: AppColor.seaweed,
          child: CircleAvatar(
            radius: 27,
            backgroundColor: AppColor.white,
            child: Image.asset(
              img,
            ),
          ),
        ),
      ),
    );
  }
}
