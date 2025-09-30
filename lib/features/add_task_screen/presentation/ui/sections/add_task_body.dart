import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/ui/widgets/custom_button.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/cores/utils/models/values/tasks_list.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/parts/input_color.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/parts/input_task_date.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/parts/input_task_text.dart';
import 'package:pathway/features/home_screen/presentation/home_screen.dart';

class AddTaskBody extends StatelessWidget {
  const AddTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    TaskMainInfo task = TaskMainInfo(
      name: "Flutter Task",
      description: "I will do that",
      dateTime: AppConstants.nowDateTime,
      startTime: AppConstants.nowTime,
      endTime: AppConstants.nowTime,
      taskColor: Colors.red,
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15.w,
        children: [
          InputTaskText(),
          InputTaskDate(),
          InputColor(),
          Spacer(),
          CustomButton(
            onTap: () {
              tasks.add(task);
              popBack(context);
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            label: "Create Task",
            margin: EdgeInsets.symmetric(vertical: 20.h),
          ),
        ],
      ),
    );
  }
}
