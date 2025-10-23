import 'package:flutter/material.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import 'package:pathway/cores/utils/models/functions/is_true.dart';
import 'package:pathway/features/home_screen/presentation/ui/widgets/tasks_list_empty.dart';
import '../../../../../cores/shared/caches/task_data.dart';
import '../parts/tasks_list_view.dart';

class TasksListState extends StatefulWidget {
  final List<bool> areTrues;
  const TasksListState({super.key, required this.areTrues,});

  @override
  State<TasksListState> createState() => _TasksListStateState();
}


class _TasksListStateState extends State<TasksListState> {
  @override
  Widget build(BuildContext context) {
    if(isAllFalse(widget.areTrues)){
      return TasksListEmpty();
    }
    else{
      return TasksListView(
        areTrues: widget.areTrues,
        onDismissed: (direction, index) {
          setState(() {
            if (direction == DismissDirection.endToStart) {
              if(TaskData.getTask(index)?.taskStatus!="outdate"){
                TaskData.update(
                  index,
                  TaskMainInfo(
                    name: TaskData.getTask(index)!.name,
                    description: TaskData.getTask(index)!.description,
                    dateTime: TaskData.getTask(index)!.dateTime,
                    startTime: TaskData.getTask(index)!.startTime,
                    endTime: TaskData.getTask(index)!.endTime,
                    taskColor: 0xFF4CAF50,
                    taskStatus: "done",
                  )
                );
              }
            }
            else if(direction == DismissDirection.startToEnd){
              TaskData.deleteTask(index);
            }
          });
        },
      );
    }
  }
}