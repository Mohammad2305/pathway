import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/cores/shared/ui/widgets/custom_button.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/add_task_screen/presentation/add_task_screen.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/date_info.dart';

class AppActions extends StatelessWidget {
  final DateTime dateTime;

  const AppActions({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DateInfo(dateTime: dateTime),
          CustomButton(
            onTap: () {
              pushTo(context, AddTaskScreen());
            },
            decoration: AppBoxDecoration.actionButtonDecoration,
            icon: Icon(Icons.add, color: Colors.white),
            label: "Add Task",
          ),
        ],
      ),
    );
  }
}
