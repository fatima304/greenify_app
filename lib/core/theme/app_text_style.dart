import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/core/theme/font_weight_helper.dart';

class AppTextStyle {
  static TextStyle font37WhiteBold = TextStyle(
    fontSize: 37.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
    fontFamily: FontFamilyHelper.montserratFont,
  );
  static TextStyle font14WhiteMedium = TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
    fontFamily: FontFamilyHelper.montserratFont,
  );
}
