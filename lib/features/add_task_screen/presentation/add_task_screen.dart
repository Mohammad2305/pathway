import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/add_task_screen/data/cores/utils/constants/add_task_inputs.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/sections/add_task_body.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/sections/custom_app_bar.dart';
import '../../../cores/shared/themes/app_boxes_decoration.dart';
import '../../../cores/shared/ui/widgets/custom_button.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(),
      body: AddTaskBody(formKey: formKey),
      bottomNavigationBar: CustomButton(
        onTap: () {
          if (formKey.currentState!.validate()) {
            TaskData.saveTask(TaskMainInfo(
              name: AddTaskInputs.taskTitle.controller.text,
              description: AddTaskInputs.taskDescription.controller.text,
              dateTime: AddTaskInputs.dateTime??DateTime.now(),
              startTime: customTimeForm(AddTaskInputs.startTime??TimeOfDay.now()),
              endTime: customTimeForm(AddTaskInputs.endTime??TimeOfDay.now()),
              taskColor: AddTaskInputs.taskColor??AppColors.mainColor,
              taskStatus: 'todo'.toUpperCase(),
            ));
            popBack(context);
          }
        },
        decoration: AppBoxDecoration.actionButtonDecoration,
        label: "Create Task",
        margin: EdgeInsets.symmetric(vertical: 25.h, horizontal: 16.w),
      ),
    );
  }
}
