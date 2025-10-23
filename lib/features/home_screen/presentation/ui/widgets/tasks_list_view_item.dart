import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';

class TasksListViewItem extends StatelessWidget {
  final int taskIndex;
  const TasksListViewItem({super.key, required this.taskIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      decoration: AppBoxDecoration.actionButtonDecoration.copyWith(color: Color(TaskData.getTask(taskIndex)!.taskColor)),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8.h,
                children: [
                  Text(TaskData.getTask(taskIndex)!.name, style: AppTextStyles.textFtS16FW700Cw),
                  Row(
                    spacing: 10.w,
                    children: [
                      Icon(Icons.access_time_outlined, color: Colors.white, size: 25.sp),
                      Text(
                        "${TaskData.getTask(taskIndex)!.startTime} - ${TaskData.getTask(taskIndex)!.endTime}",
                        style: AppTextStyles.textFt12Cw,
                      ),
                    ],
                  ),
                  Text(
                    TaskData.getTask(taskIndex)!.description,
                    style: AppTextStyles.textFtS14FW500Cw,
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
                TaskData.getTask(taskIndex)!.taskStatus.toUpperCase(),
                style: AppTextStyles.textFtS14FW500Cw,
              ),
            ),
          ],
        ),
      ),
    );
  }
}