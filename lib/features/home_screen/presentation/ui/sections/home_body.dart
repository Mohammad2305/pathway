import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/actions.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/date_filter.dart';
import 'package:pathway/features/home_screen/presentation/ui/parts/user_info.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';
import '../../../../../cores/shared/constants/app_constants.dart';

class HomeBody extends StatelessWidget {
  final String? userName;
  final String? userImage;
  const HomeBody({super.key, this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    DateTime? dateTime;
    int selectedIndex = 0 ;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          spacing: 20.h,
          children: [
            UserInfo(userName: userName, userImage: userImage),
            AppActions(dateTime: dateTime ?? AppConstants.nowDateTime,),
            DateFilter(dateTime: dateTime ?? AppConstants.nowDateTime, selectedIndex: selectedIndex,),
            TasksListState()
          ],
        ),
      ),
    );
  }
}