import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';

class TasksListViewItem extends StatelessWidget {
  const TasksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      decoration: AppBoxDecoration.actionButtonDecoration,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.h,
              children: [
                Text("Flutter Task - 1", style: AppTextStyles.taskTitle),
                Row(
                  spacing: 10.w,
                  children: [
                    Icon(Icons.access_time, color: Colors.white, size: 25.sp),
                    Text("02:25 AM - 02:40 AM", style: AppTextStyles.taskTime),
                  ],
                ),
                Text(
                  "I will do this task",
                  style: AppTextStyles.taskDescription,
                ),
              ],
            ),
            Spacer(),
            VerticalDivider(thickness: 1, color: Colors.white),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                "todo".toUpperCase(),
                style: AppTextStyles.taskDescription,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
