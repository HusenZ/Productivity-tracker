import 'package:flutter/material.dart';

class ToDoDisplay extends StatelessWidget {
  final String todo;
  final bool isCompleted;
  const ToDoDisplay({
    Key? key,
    required this.todo,
    required this.isCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo),
      leading: Checkbox(
        value: isCompleted,
        onChanged: (value) {},
      ),
    );
  }
}
