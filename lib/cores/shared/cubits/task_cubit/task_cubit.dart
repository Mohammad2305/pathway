import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:pathway/features/add_task_screen/presentation/add_task_screen.dart';
import '../../caches/task_data.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  int currentIndex = 0;

  void changeDate(int selectedIndex){
    if(currentIndex != selectedIndex){
      currentIndex = selectedIndex;
    }
    emit(ChangeIndexState());
  }


  void navigateToAddTask(BuildContext context) async{
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddTaskScreen(),
      ),
    );
    emit(NavigateToAddTaskState());
  }

  void outDate(){
    TaskData.getTasks();
    emit(OutDatedTaskState());
  }
}
