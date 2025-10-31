part of 'task_cubit.dart';

@immutable
abstract class TaskState {}

class TaskInitial extends TaskState {}

class NavigateToAddTaskState extends TaskState{}

class ChangeIndexState extends TaskState{}

class OutDatedTaskState extends TaskState {}