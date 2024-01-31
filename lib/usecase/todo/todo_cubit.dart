import 'package:bloc/bloc.dart';
import 'package:bloc_bootstrap/data/model/screen_status.dart';
import 'package:bloc_bootstrap/data/repository/todo_repository.dart';
import 'package:bloc_bootstrap/usecase/todo/todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  late final repository = TodoRepository();

  TodoCubit() : super(const TodoState());

  initScreen() async {
    if (state.fetchTodosStatus.isInitial) {
      await fetchTodos();
    }
  }

  fetchTodos() async {
    emit(state.copyWith(fetchTodosStatus: Status.inProgress));
    try {
      final allTodos = await repository.getAllTodos();
      emit(state.copyWith(
        fetchTodosStatus: Status.success,
        todos: allTodos,
      ));
    } catch (error) {
      emit(state.copyWith(fetchTodosStatus: Status.failure));
    }
  }

  deleteTodo() async {}
}
