import '../domain/task.dart';
import '../domain/task_repository.dart';

class InMemoryTaskRepository implements TaskRepository {
  final List<Task> _tasks = [
    const Task(
      id: '1',
      title: 'Complete Flutter lab',
      description: 'Build the Campus Hub interface.',
    ),
    const Task(
      id: '2',
      title: 'Prepare project idea',
      description: 'Write a one-page app proposal.',
    ),
  ];

  @override
  List<Task> getTasks() => List.unmodifiable(_tasks);

  @override
  void addTask(Task task) {
    _tasks.add(task);
  }
}
