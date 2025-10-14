import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';

class AppBoxDecoration {
  static BoxDecoration actionButtonDecoration = BoxDecoration(
    color: AppColors.mainColor,
    borderRadius: BorderRadius.circular(20.r),
  );

  static BoxDecoration changeProfile(String image, double thickness) =>
      BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.mainColor, width: thickness),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      );

  static BoxDecoration profile(double thickness) => BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: AppColors.mainColor, width: thickness),
  );

  static BoxDecoration bottomSheetDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.r),
  );
}
