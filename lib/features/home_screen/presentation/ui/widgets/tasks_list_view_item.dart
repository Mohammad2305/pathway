import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import 'package:pathway/cores/utils/models/values/tasks_list.dart';

class TasksListViewItem extends StatelessWidget {
  final int index;
  const TasksListViewItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      decoration: AppBoxDecoration.actionButtonDecoration.copyWith(color: tasks[index].taskColor),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8.h,
                children: [
                  Text(tasks[index].name, style: AppTextStyles.taskTitle),
                  Row(
                    spacing: 10.w,
                    children: [
                      Icon(Icons.access_time, color: Colors.white, size: 25.sp),
                      Text(
                        "${customTimeForm(tasks[index].startTime)} - ${customTimeForm(tasks[index].endTime)}",
                        style: AppTextStyles.taskTime,
                      ),
                    ],
                  ),
                  Text(
                    tasks[index].description,
                    style: AppTextStyles.taskDescription,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Spacer(),
            VerticalDivider(thickness: 1, color: Colors.white),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                tasks[index].taskStatus,
                style: AppTextStyles.taskDescription,
              ),
            ),
          ],
        ),
      ),
    );
  }
}