import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/ui/widgets/custom_input.dart';
import '../../../data/cores/utils/constants/add_task_inputs.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.w,
      children: [
        Expanded(
          child: CustomInput(inputInfo: AddTaskInputs.taskStartTime),
        ),
        Expanded(
          child: CustomInput(inputInfo: AddTaskInputs.taskEndTime),
        ),
      ],
    );
  }
}
