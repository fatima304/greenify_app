import 'package:flutter/material.dart';

import '../theme/app_text_style.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({super.key, required this.error, this.backgroundColor});

  final String error;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor ?? Colors.red,
        ),
        child: Text(
          error,
          style: AppTextStyle.font14WhiteMedium,
        ),
      ),
    );
  }
}
