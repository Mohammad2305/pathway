import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/data/utils/functions/filter_tasks.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/actions.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/date_filter.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/user_info.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';
import '../../../../../cores/utils/models/classes/task_info.dart';
import '../../../../../cores/utils/models/values/tasks_list.dart';
import '../../../../add_task_screen/presentation/add_task_screen.dart';
import '../../../../profile_screen/presentation/profile_screen.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key,});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}
int currentIndex = 0 ;
List<TaskMainInfo> selectedTasks = tasks;

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 20.h,
        children: [
          UserInfo(
            onTap: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
              setState(() {});
            },
          ),
          AppActions(
            currentIndex: currentIndex,
            onTap: () async {
              await Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => AddTaskScreen()));
              setState(() {});
            },
          ),
          Expanded(
            flex: 2,
            child: DateFilter(
              onChange: (selectedIndex){
                setState(() {
                  currentIndex = selectedIndex;
                  selectedTasks = filterTasks(currentIndex, selectedIndex);
                });
              },
            ),
          ),
          Expanded(flex: 6, child: TasksListState(tasksList: selectedTasks,)),
        ],
      ),
    );
  }
}