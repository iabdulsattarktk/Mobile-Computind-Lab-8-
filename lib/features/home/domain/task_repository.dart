import 'task.dart';

abstract class TaskRepository {
  List<Task> getTasks();
  void addTask(Task task);
}
