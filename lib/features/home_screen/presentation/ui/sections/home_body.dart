import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/actions.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/date_filter.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/user_info.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';
import '../../../../add_task_screen/presentation/add_task_screen.dart';
import '../../../../profile_screen/presentation/profile_screen.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key,});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

int currentIndex = 0 ;

class _HomeBodyState extends State<HomeBody> {
  @override
  void setState(VoidCallback fn) {
    TaskData.getTasks();
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
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
                  if(currentIndex != selectedIndex){
                    currentIndex = selectedIndex;
                  }
                });
              },
            ),
          ),
          Expanded(
            flex: 7,
            child: TasksListState(
              areTrues: TaskData.taskDate(dayDate().add(Duration(days: currentIndex))),
            ),
          ),
        ],
      ),
    );
  }
}