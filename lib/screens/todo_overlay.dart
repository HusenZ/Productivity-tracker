import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:productivity_tracker/bloc/app_bloc.dart';
import 'package:productivity_tracker/bloc/app_state.dart';
import 'package:productivity_tracker/utils/todos_list.dart';

class AddTodoOverlay extends StatelessWidget {
  final TextEditingController todoController = TextEditingController();

  AddTodoOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: todoController,
                  decoration: const InputDecoration(
                    hintText: 'Add a to-do',
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (todoController.text.isNotEmpty) {
                        final String todotask = todoController.text;
                        allTask
                            .add(TodoTask(task: todotask, isCompleted: false));
                        Navigator.of(context).pushNamed('/home');
                      }
                      if (todoController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Add todo or press back button!!'),
                          ),
                        );
                      }
                    },
                    child: const Text('Add'),
                  ),
                  IconButton.filled(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
