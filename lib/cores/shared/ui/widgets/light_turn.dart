import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';

class LightTurn extends StatefulWidget {
  const LightTurn({super.key});

  @override
  State<LightTurn> createState() => _LightTurnState();
}

bool isTurn = false;

class _LightTurnState extends State<LightTurn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          isTurn = !isTurn;
        });
      },
      child: Container(
        height: 100.h,
        width: 100.w,

        decoration: BoxDecoration(
          color: isTurn ? Color(AppColors.mainColor) : Color(AppColors.mainColor).withAlpha(50),
          border: Border.all(color: Color(AppColors.mainColor), width: 5.r),
          shape: BoxShape.circle
        ),
      ),
    );
  }
}
