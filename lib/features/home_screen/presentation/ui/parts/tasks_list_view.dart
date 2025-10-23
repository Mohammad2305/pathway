import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/data/utils/functions/swipe_direction_able.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_view_item.dart';
import 'package:pathway/cores/shared/ui/widgets/swipe_dismissible.dart';
import '../../../../../cores/shared/caches/task_data.dart';

class TasksListView extends StatelessWidget {
  final void Function(DismissDirection, int) onDismissed;
  final List<bool> areTrues;
  const TasksListView({super.key, required this.onDismissed, required this.areTrues,});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
      physics: PageScrollPhysics(),
      itemCount: TaskData.taskBox.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        if(areTrues[index]){
          return Dismissible(
            key: UniqueKey(),
            direction: swipeDirectionAble(areTrues, index),
            secondaryBackground: SwipeDismissible(
              label: "done",
              actionColor: Colors.green,
              textAlign: Alignment.centerRight,
            ),
            background: SwipeDismissible(
              label: "delete",
              actionColor: Colors.red,
              textAlign: Alignment.centerLeft,
            ),
            onDismissed: (direction){
              onDismissed(direction, index);
            },
            child: TasksListViewItem(taskIndex: index,),
          );
        }
        else{
          return SizedBox.shrink();
        }
      },
      separatorBuilder: (context, index) {
        if(areTrues[index]){
          return SizedBox(height: 10.h,);
        }
        else{
          return SizedBox.shrink();
        }
      },
    );
  }
}