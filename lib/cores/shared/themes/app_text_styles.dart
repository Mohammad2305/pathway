import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';

class AppTextStyles{
  static TextStyle appTitle = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle appOrdinary = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle welcomeTitle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.mainColor
  );

  static TextStyle welcomeDescription = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w300,
  );

  static TextStyle actions = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}