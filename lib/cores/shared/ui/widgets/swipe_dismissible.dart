import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import '../../themes/app_text_styles.dart';

class SwipeDismissible extends StatelessWidget {
  final String label;
  final Color actionColor;
  final Alignment textAlign;

  const SwipeDismissible({
    super.key,
    required this.label,
    required this.actionColor,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        spacing: 10.w,
        children: [
          Expanded(
            flex: textAlign==Alignment.centerRight ? 60 : 2 ,
            child: Divider(
              color: actionColor,
              thickness: 10,
              radius: BorderRadiusGeometry.circular(5),
            ),
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.h),
              decoration: AppBoxDecoration.actionButtonDecoration.copyWith(
                color: actionColor,
              ),
              child: Text(
                label.toUpperCase(),
                style: AppTextStyles.textFtS14FW500Cbt.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: textAlign==Alignment.centerRight ? 2 : 60,
            child: Divider(
              color: actionColor,
              thickness: 10,
              radius: BorderRadiusGeometry.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
