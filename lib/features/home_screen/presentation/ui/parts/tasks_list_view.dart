import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_view_item.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TasksListViewItem();
      },
      separatorBuilder: (context, index)=> SizedBox(height: 10.h,),
    );
  }
}
