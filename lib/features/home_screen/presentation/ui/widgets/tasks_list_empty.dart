import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/constants/app_assets.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';

class TasksListEmpty extends StatelessWidget {
  const TasksListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.taskListEmpty, scale: 3,),
        Text("You do not have any tasks yet!", style: AppTextStyles.appOrdinary,),
        Text("Add new tasks to make your days productive.", style: AppTextStyles.appOrdinary,)
      ],
    );
  }
}
