import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/utils/models/values/tasks_list.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_view_item.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      physics: NeverScrollableScrollPhysics(),
      itemCount: tasks.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          background: Text("background widget"),
          secondaryBackground: Text("secondaryBackground widget"),
          child: TasksListViewItem(index: index,)
        );
      },
      separatorBuilder: (context, index)=> SizedBox(height: 10.h,),
    );
  }
}
