import 'package:flutter/material.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/utils/models/functions/tasks_list.dart';
import '../../../../../cores/utils/models/functions/is_true.dart';

DismissDirection swipeDirectionAble(List<bool> areTrues, int index) {
  if (TaskData.getTasks()![index].taskStatus != "outdated") {
    if(TaskData.getTasks()![index].taskStatus == "done"){
      return isAllTrue(areTrues)
          ? DismissDirection.startToEnd
          : DismissDirection.none;
    }
    else{
      return isAllTrue(areTrues)
          ? DismissDirection.horizontal
          : DismissDirection.endToStart;
    }
  }
  else {
    return isAllTrue(areTrues)
        ? DismissDirection.startToEnd
        : DismissDirection.none;
  }
}
