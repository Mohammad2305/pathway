import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';

class AppBorderStyles{
  static InputBorder border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2.sp),
      borderRadius: BorderRadius.circular(10.r)
  );

  static InputBorder focusedBorder = OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.mainColor, width: 2.sp),
      borderRadius: BorderRadius.circular(10.r)
  );

  static InputBorder enabledBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2.sp),
      borderRadius: BorderRadius.circular(10.r)
  );

  static InputBorder errorBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.sp),
      borderRadius: BorderRadius.circular(10.r)
  );

  static InputBorder disabledBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2.sp),
      borderRadius: BorderRadius.circular(10.r)
  );
}