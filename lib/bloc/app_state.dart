import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AppState extends Equatable {
  final bool isLoading;
  final List<String> allTodos;

  const AppState({
    required this.isLoading,
    required this.allTodos,
  });

  factory AppState.empty() {
    return const AppState(isLoading: true, allTodos: []);
  }

  factory AppState.addTodo(List<String> updatedTodos) {
    return AppState(isLoading: false, allTodos: updatedTodos);
  }

  @override
  List<Object?> get props => [allTodos];
}
