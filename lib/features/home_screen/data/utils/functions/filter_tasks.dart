import 'package:pathway/cores/shared/caches/task_data.dart';
import 'package:pathway/cores/utils/models/classes/task_info.dart';
import '../../../../../cores/utils/models/functions/tasks_list.dart';

List<TaskMainInfo> filterTasks(int currentIndex, int selectedIndex){
  currentIndex = selectedIndex;
   return TaskData.getTasks()!.where((task){
    return task.dateTime == DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day
    ).add(Duration(days: currentIndex));
  }).toList();
}