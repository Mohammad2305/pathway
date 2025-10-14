import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/cache_helper.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/actions.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/date_filter.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/user_info.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';
import '../../../../../cores/shared/constants/app_constants.dart';
import '../../../../../cores/utils/models/functions/navigators.dart';
import '../../../../add_task_screen/presentation/add_task_screen.dart';
import '../../../../profile_screen/presentation/profile_screen.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key,});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    DateTime? dateTime;

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
            dateTime: dateTime ?? AppConstants.nowDateTime,
            onTap: () async {
              await Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => AddTaskScreen()));
              setState(() {});
            },
          ),
          Expanded(flex: 2, child: DateFilter(dateTime: dateTime ?? AppConstants.nowDateTime)),
          Expanded(flex: 6, child: TasksListState()),
        ],
      ),
    );
  }
}
