import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/shared/cubits/task_cubit/task_cubit.dart';
import 'package:pathway/features/home_screen/presentation/ui/sections/home_body.dart';
import 'package:pathway/features/tasks_list_screen/presentation/tasks_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final String? userName;
  final String? userImage;

  const HomeScreen({super.key, this.userName, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(AppColors.mainColor),
        onPressed: () async{
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TasksListScreen(),
            ),
          );
          context.read<TaskCubit>().changeDate(0);
        },
        child: Icon(Icons.file_copy_outlined, color: Colors.white),
      ),
    );
  }
}
