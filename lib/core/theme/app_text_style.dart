import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/font_weight_helper.dart';

class AppTextStyle {
  static TextStyle font14WhiteMedium = TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );

   static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font20WhiteMedium = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font37WhiteBold = TextStyle(
    fontSize: 37.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14BlackMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColor.black,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColor.black,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font20BlackMedium = TextStyle(
    fontSize: 20.sp,
    color: AppColor.black,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14LightGreenSemiBold = TextStyle(
    fontSize: 14.sp,
    color: AppColor.darkGreen,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font16DarkGreenMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColor.darkGreen,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font18DarkGreenRegular = TextStyle(
    fontSize: 18.sp,
    color: AppColor.darkGreen,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16RedRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColor.red,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12LightGreyMedium = TextStyle(
    fontSize: 12.sp,
    color: AppColor.lightGrey,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font16LightGreySemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColor.darkGrey,
    fontWeight: FontWeightHelper.semiBold,
  );
}
