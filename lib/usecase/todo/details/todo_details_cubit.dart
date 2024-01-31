import 'package:bloc/bloc.dart';
import 'package:bloc_bootstrap/data/model/todo.dart';
import 'package:bloc_bootstrap/data/repository/todo_repository.dart';
import 'package:meta/meta.dart';

part 'todo_details_state.dart';

class TodoDetailsCubit extends Cubit<TodoDetailsState> {
  late final repository = TodoRepository();

  TodoDetailsCubit() : super(TodoDetailsLoadInProgress());

  fetchTodo(String id) async {
    emit(TodoDetailsLoadInProgress());
    try {
      final todo = await repository.getTodo(id);
      emit(TodoDetailsLoadSuccess(todo));
    } catch (error) {
      emit(TodoDetailsLoadFailure());
    }
  }
}
