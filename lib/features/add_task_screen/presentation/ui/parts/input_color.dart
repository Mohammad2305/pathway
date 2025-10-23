import 'package:flutter/material.dart';
import 'package:pathway/features/add_task_screen/data/cores/utils/constants/add_task_inputs.dart';
import '../../../../../cores/shared/themes/app_text_styles.dart';
import '../widgets/color_filter.dart';

class InputColor extends StatelessWidget {
  const InputColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color", style: AppTextStyles.textFtS14FW500Cbt),
        ColorPicker(
          onTap: (index){
            AddTaskInputs.taskColor = index;
          },
        ),
      ],
    );
  }
}
