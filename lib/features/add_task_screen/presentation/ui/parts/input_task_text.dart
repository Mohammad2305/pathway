import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/ui/widgets/custom_input.dart';
import '../../../data/cores/utils/constants/add_task_inputs.dart';

class InputTaskText extends StatelessWidget {
  const InputTaskText({super.key, });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.w,
      children: [
        CustomInput(inputInfo: AddTaskInputs.taskTitle),
        CustomInput(inputInfo: AddTaskInputs.taskDescription),
      ],
    );
  }
}
