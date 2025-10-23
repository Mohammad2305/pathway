import 'package:hive/hive.dart';
import 'package:pathway/cores/shared/constants/app_constants.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import '../../utils/models/functions/tasks_list.dart';

class TaskData{
  static Box<TaskMainInfo> taskBox = Hive.box<TaskMainInfo>(AppConstants.taskBoxId);

  static void saveTask(TaskMainInfo task){
    taskBox.add(task);
  }

  static TaskMainInfo? getTask(int index){
    return taskBox.getAt(index);
  }

  static List<TaskMainInfo>? getTasks(){
    return outDate(taskBox.values.toList());
  }


  static void deleteTask(int index){
    taskBox.deleteAt(index);
  }

  static void clear(){
    taskBox.clear();
  }

  static List<bool> taskDate(DateTime date){
    List<bool> areTrues = [];
    for(int index=0 ; index<taskBox.length ; index++){
      if(getTask(index)?.dateTime == date){
        areTrues.add(true);
      }
      else{
        areTrues.add(false);
      }
    }
    return areTrues;
  }

  static update(int index, TaskMainInfo task){
    taskBox.putAt(index, task);
  }
}