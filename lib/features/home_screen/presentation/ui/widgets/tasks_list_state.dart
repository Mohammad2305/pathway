import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_empty.dart';
import '../../../../../cores/utils/models/values/tasks_list.dart';
import '../parts/tasks_list_view.dart';

class TasksListState extends StatefulWidget {
  final List<TaskMainInfo> tasksList;
  const TasksListState({super.key, required this.tasksList,});

  @override
  State<TasksListState> createState() => _TasksListStateState();
}


class _TasksListStateState extends State<TasksListState> {
  @override
  Widget build(BuildContext context) {
    return widget.tasksList.isEmpty ? TasksListEmpty(): TasksListView(
      tasksList: widget.tasksList,
      onDismissed: (direction, index) {
        setState(() {
          if (direction == DismissDirection.endToStart) {
            widget.tasksList[index].taskStatus = "completed";
            widget.tasksList[index].taskColor = Colors.green;
          }
          else if(direction == DismissDirection.startToEnd){
            if(widget.tasksList != tasks){
              tasks.removeAt(tasks.indexWhere((task){
                return task == widget.tasksList[index];
              }));
            }
            widget.tasksList.removeAt(index);
          }
        });
      },
    );
  }
}