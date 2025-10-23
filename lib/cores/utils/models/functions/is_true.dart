import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/utils/models/functions/tasks_list.dart';

List<bool> isTrue(DateTime day){
  List<bool> boolList = [];
  for(int index=0 ; index<TaskData.taskBox.length ; index++){
    if(day == TaskData.getTasks()![index].dateTime){
      boolList.add(true);
    }
    else{
      boolList.add(false);
    }
  }
  return boolList;
}

bool isAllFalse(List<bool> boolList){
  for(int index=0 ; index<TaskData.taskBox.length ; index++){
    if(boolList[index] == true){
      return false;
    }
  }
  return true;
}

bool isAllTrue(List<bool> boolList){
  for(int index=0 ; index<TaskData.taskBox.length ; index++){
    if(boolList[index] == false){
      return false;
    }
  }
  return true;
}