import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/themes/app_boxes_decoration.dart';
import 'package:pathway/cores/shared/themes/app_text_styles.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_view_item.dart';
import '../../../../../cores/utils/models/classes/task_info.dart';

class TasksListView extends StatelessWidget {
  final void Function(DismissDirection, int) onDismissed;
  final List<TaskMainInfo> tasksList;
  const TasksListView({super.key, required this.onDismissed, required this.tasksList,});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      physics: PageScrollPhysics(),
      itemCount: tasksList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          secondaryBackground: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: AppBoxDecoration.actionButtonDecoration.copyWith(
              color: Colors.green,
            ),
            child: Text(
              "Completed",
              style: AppTextStyles.taskDescription,
              textAlign: TextAlign.end,
            ),
          ),
          background: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: AppBoxDecoration.actionButtonDecoration.copyWith(
              color: Colors.red,
            ),
            child: Text("delete", style: AppTextStyles.taskDescription),
          ),
          onDismissed: (direction){
            onDismissed(direction, index);
          },
          child: TasksListViewItem(index: index, tasksList: tasksList,),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
    );
  }
}