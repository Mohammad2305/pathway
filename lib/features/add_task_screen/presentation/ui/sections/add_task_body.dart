import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/parts/input_color.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/parts/input_task_date.dart';
import 'package:pathway/features/add_task_screen/presentation/ui/parts/input_task_text.dart';

class AddTaskBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const AddTaskBody({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.w,
          children: [
            InputTaskText(),
            InputTaskDate(),
            InputColor(),
          ],
        ),
      ),
    );
  }
}
