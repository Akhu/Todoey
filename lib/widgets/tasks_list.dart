import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  final List<Task> tasksListDataSource;
  final Function taskChecked;

  const TasksList({this.tasksListDataSource, this.taskChecked});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasksListDataSource.length,
        itemBuilder: (context, index) {
      return TaskTile(
          isChecked: tasksListDataSource[index].isDone,
          taskTitle: tasksListDataSource[index].name,
          callback : (checkedState) {
            taskChecked(index);
          }
      );
    });
  }
}

