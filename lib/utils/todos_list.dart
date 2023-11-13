import 'dart:convert';

class TodoTask {
  final String task;
  bool isCompleted;
  TodoTask({
    required this.task,
    required this.isCompleted,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'task': task});
    result.addAll({'isCompleted': isCompleted});

    return result;
  }

  factory TodoTask.fromMap(Map<String, dynamic> map) {
    return TodoTask(
      task: map['task'] ?? '',
      isCompleted: map['isCompleted'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoTask.fromJson(String source) =>
      TodoTask.fromMap(json.decode(source));
}

List<TodoTask> allTask = [
  TodoTask(task: 'read a book', isCompleted: false),
  TodoTask(task: 'listen to podcast', isCompleted: false),
];
