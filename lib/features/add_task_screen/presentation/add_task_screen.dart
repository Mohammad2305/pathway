import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/cores/utils/models/values/tasks_list.dart';
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
    int selectedIndex = 0 ;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(),
      body: AddTaskBody(formKey: formKey),
      bottomNavigationBar: CustomButton(
        onTap: () {
          if (formKey.currentState!.validate()) {
            tasks.add(
              TaskMainInfo(
                name: AddTaskInputs.taskTitle.controller.text,
                description: AddTaskInputs.taskDescription.controller.text,
                dateTime: AddTaskInputs.dateTime!,
                startTime: AddTaskInputs.startTime!,
                endTime: AddTaskInputs.endTime!,
                taskColor: AddTaskInputs.taskColor!,
                taskStatus: 'todo'.toUpperCase(),
              ),
            );
            popBack(context);
          }
        },
        decoration: AppBoxDecoration.actionButtonDecoration,
        label: "Create Task",
        margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
      ),
    );
  }
}
