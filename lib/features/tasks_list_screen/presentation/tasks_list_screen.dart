import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/constants/app_colors.dart';
import 'package:pathway/cores/utils/models/functions/navigators.dart';
import 'package:pathway/features/home_screen/presentation/home_screen.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';

class TasksListScreen extends StatefulWidget {
  const TasksListScreen({super.key});

  @override
  State<TasksListScreen> createState() => _TasksListScreenState();
}



class _TasksListScreenState extends State<TasksListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            pushReplacementTo(context, HomeScreen());
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: TasksListState(
          areTrues: List.generate(TaskData.taskBox.length, (index)=>true),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(AppColors.mainColor),
        onPressed: (){
          setState(() {
            TaskData.clear();
          });
        },
        child: Icon(Icons.delete, color: Colors.white,),
      ),
    );
  }
}
