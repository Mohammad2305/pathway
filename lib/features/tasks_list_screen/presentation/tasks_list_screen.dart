import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/values/tasks_list.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_state.dart';

class TasksListScreen extends StatelessWidget {
  const TasksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: TasksListState(tasksList: tasks),
      ),
    );
  }
}
