import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/ui/widgets/custom_input.dart';
import '../../../data/cores/utils/constants/add_task_inputs.dart';
import '../widgets/time_picker.dart';

class InputTaskDate extends StatelessWidget {
  const InputTaskDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.w,
      children: [
        CustomInput(inputInfo: AddTaskInputs.taskDate),
        TimePicker(),
      ],
    );
  }
}
