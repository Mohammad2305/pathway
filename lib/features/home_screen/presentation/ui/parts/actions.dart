import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';

class AppActions extends StatelessWidget {
  final DateTime? dateTime;
  const AppActions({super.key, this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              monthDayYear(dateTime ?? AppConstants.nowDateTime),
              style: AppTextStyles.actions,
            ),
            Text(dayName(AppConstants.nowDateTime), style: AppTextStyles.actions),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
            decoration: AppBoxDecoration.actionButtonDecoration,
            child: Row(
              spacing: 5.w,
              children: [
                Icon(Icons.add, color: Colors.white),
                Text("Add Task", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
