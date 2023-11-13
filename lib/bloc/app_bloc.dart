import 'package:bloc/bloc.dart';
import 'package:productivity_tracker/bloc/app_event.dart';
import 'package:productivity_tracker/bloc/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  // static List<String> todos = [];
  AppBloc() : super(AppState.empty()) {
    on<LoadedEvnet>((event, emit) {
      emit(AppState(isLoading: false, allTodos: state.allTodos));
    });

    on<AddTodoEvent>(
      (event, emit) {
        emit(AppState(
            isLoading: false,
            allTodos: List.from(state.allTodos)..add(event.todo)));
      },
    );
  }
}
