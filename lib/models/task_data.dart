import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  int get taskCount {
    return _tasks.length;
  }

  List<Task> _tasks = [Task(name: '1'), Task(name: '2'), Task(name: '3')];

  void addTask(String TaskTitle) {
    final task = Task(name: TaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
}
