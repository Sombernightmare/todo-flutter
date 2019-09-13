import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  int get taskCount {
    return tasks.length;
  }

  List<Task> tasks = [Task(name: '1'), Task(name: '2'), Task(name: '3')];
}
