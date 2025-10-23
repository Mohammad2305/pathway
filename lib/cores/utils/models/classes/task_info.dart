import 'package:hive/hive.dart';
part 'task_info.g.dart';

@HiveType(typeId: 0)
class TaskMainInfo extends HiveObject{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final DateTime dateTime;
  @HiveField(3)
  final String startTime;
  @HiveField(4)
  final String endTime;
  @HiveField(5)
  int taskColor;
  @HiveField(6)
  String taskStatus;

  TaskMainInfo({
    required this.name,
    required this.description,
    required this.dateTime,
    required this.startTime,
    required this.endTime,
    required this.taskColor,
    required this.taskStatus,
  });
}