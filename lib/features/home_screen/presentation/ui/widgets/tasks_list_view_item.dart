import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import '../../../../../cores/utils/models/classes/task_info.dart';

class TasksListViewItem extends StatelessWidget {
  final int index;
  final List<TaskMainInfo> tasksList;
  const TasksListViewItem({super.key, required this.index, required this.tasksList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      decoration: AppBoxDecoration.actionButtonDecoration.copyWith(color: tasksList[index].taskColor),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8.h,
                children: [
                  Text(tasksList[index].name, style: AppTextStyles.taskTitle),
                  Row(
                    spacing: 10.w,
                    children: [
                      Icon(Icons.access_time, color: Colors.white, size: 25.sp),
                      Text(
                        "${customTimeForm(tasksList[index].startTime)} - ${customTimeForm(tasksList[index].endTime)}",
                        style: AppTextStyles.taskTime,
                      ),
                    ],
                  ),
                  Text(
                    tasksList[index].description,
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
                tasksList[index].taskStatus.toUpperCase(),
                style: AppTextStyles.taskDescription,
              ),
            ),
          ],
        ),
      ),
    );
  }
}