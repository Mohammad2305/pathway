import 'package:pathway/cores/utils/models/functions/dates.dart';
import '../classes/task_info.dart';

List<TaskMainInfo> outDate(List<TaskMainInfo> tasksList){
  for(int i=0 ; i<tasksList.length ; i++){
    if(DateTime.now().isAfter(dateAndTime(tasksList[i].dateTime, textToTime(tasksList[i].endTime)))){
      tasksList[i].taskStatus = "outdated";
      tasksList[i].taskColor = 0xffff0000;
    }
  }
  return tasksList;
}

