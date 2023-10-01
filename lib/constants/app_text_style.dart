import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle get bold20 => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      );

  static TextStyle whiteBold30 = TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor);

  static TextStyle bold25Black = TextStyle(
    fontSize: 25.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle lightGreyText =
      TextStyle(color: AppColors.lightGreyColor);
  static TextStyle lightGrey20 =
      TextStyle(color: AppColors.lightGreyColor, fontSize: 16.sp);
}
