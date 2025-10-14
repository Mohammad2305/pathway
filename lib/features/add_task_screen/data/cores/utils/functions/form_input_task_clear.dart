import 'package:flutter/material.dart';
import 'package:pathway/features/add_task_screen/data/cores/utils/constants/add_task_inputs.dart';

void clearFormInputs(BuildContext context){
  AddTaskInputs.taskTitle.controller.text = "";
  AddTaskInputs.taskDescription.controller.text = "";
  AddTaskInputs.taskDate(context).controller.text = "";
  AddTaskInputs.taskStartTime(context).controller.text = "";
  AddTaskInputs.taskEndTime(context).controller.text = "";
}