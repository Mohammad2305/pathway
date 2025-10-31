import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/cubits/task_cubit/task_cubit.dart';
import 'package:pathway/cores/shared/cubits/user_cubit/user_cubit.dart';
import 'package:pathway/cores/utils/models/functions/dates.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/actions.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/date_filter.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/user_info.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        spacing: 20.h,
        children: [
          BlocBuilder<UserCubit, UserState>(
              builder: (context, state) {
                return UserInfo(
                  onTap: () async {
                    context.read<UserCubit>().navigateToProfile(context);
                  },
                );
              }
          ),
          BlocBuilder<TaskCubit, TaskState>(
              builder: (context, state) {
                context.read<TaskCubit>().outDate();
                return AppActions(
                  currentIndex: context.read<TaskCubit>().currentIndex,
                  onTap: () async {
                    context.read<TaskCubit>().navigateToAddTask(context);
                  },
                );
              }
          ),
          Expanded(
            flex: 2,
            child: DateFilter(
              onChange: (selectedIndex){
                context.read<TaskCubit>().changeDate(selectedIndex);
              },
            ),
          ),
          BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              return Expanded(
                flex: 7,
                child: TasksListState(
                  areTrues: TaskData.taskDate(dayDate().add(Duration(days: context.read<TaskCubit>().currentIndex))),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}