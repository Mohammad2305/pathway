import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';

class TasksListEmpty extends StatelessWidget {
  const TasksListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.list_alt_outlined, size: 100.sp,),
        Text(
          "You do not have any tasks yet!",
          style: AppTextStyles.textFtS14FW500Cbt,
        ),
        Text(
          "Add new tasks to make your days productive.",
          style: AppTextStyles.textFtS14FW500Cbt,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
