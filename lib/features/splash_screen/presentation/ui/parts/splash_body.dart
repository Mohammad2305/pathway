import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_assets.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20.h,
        children: [
          Image.asset(AppAssets.appLogo, height: 500.h,),
          Text("Pathway", style: AppTextStyles.appTitle,),
          Text("It's the time for organize our tasks.", style: AppTextStyles.appOrdinary,)
        ],
      ),
    );
  }
}
