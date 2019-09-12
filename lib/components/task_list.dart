import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [Task(name: '1'), Task(name: '2'), Task(name: '3')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: tasks[index].name,
              isChecked: tasks[index].isComplete,
              checkboxCallback: (checkboxState) {
                setState(() {
                  tasks[index].toggleComplete();
                });
              });
        },
        itemCount: tasks.length);
  }
}
