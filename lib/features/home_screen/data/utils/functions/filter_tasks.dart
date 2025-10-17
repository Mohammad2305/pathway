import 'package:pathway/cores/utils/models/classes/task_info.dart';
import '../../../../../cores/utils/models/values/tasks_list.dart';

List<TaskMainInfo> filterTasks(int currentIndex, int selectedIndex){
  currentIndex = selectedIndex;
   return tasks.where((task){
    return task.dateTime == DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day
    ).add(Duration(days: currentIndex));
  }).toList();
}