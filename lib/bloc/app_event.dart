import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AppEvent extends Equatable {}

class LoadedEvnet extends AppEvent {
  @override
  List<Object?> get props => [];
}

class AddTodoEvent extends AppEvent {
  final String todo;

  AddTodoEvent({required this.todo});

  @override
  List<Object?> get props => [todo];
}
