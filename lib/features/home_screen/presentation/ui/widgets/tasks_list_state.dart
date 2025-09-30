import 'package:flutter/material.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_empty.dart';
import '../../../../../cores/utils/models/values/tasks_list.dart';
import '../parts/tasks_list_view.dart';

class TasksListState extends StatelessWidget {
  const TasksListState({super.key});

  @override
  Widget build(BuildContext context) {
    return tasks.isEmpty ? TasksListEmpty(): TasksListView();
  }
}
