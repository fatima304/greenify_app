import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';

// ignore: must_be_immutable
class SharedTextField extends StatelessWidget {
  SharedTextField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.prefixIcon,
    this.onChanged,
    this.controller,
    this.onTap,
  });

  bool obscureText;
  final String hintText;
  final IconData prefixIcon;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          onChanged: onChanged,
          onTap: onTap,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.lightGreen,
            hintText: hintText,
            hintStyle: AppTextStyle.font18DarkGreenRegular.copyWith(
              fontSize: 17.5,
              fontFamily: FontFamilyHelper.montagaFont,
              color: AppColor.darkGreen.withOpacity(0.76),
            ),
            prefixIcon: Icon(
              prefixIcon,
              size: 30.sp,
              color: AppColor.medGreen,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.lightGreen),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
