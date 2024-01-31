import 'package:bloc_bootstrap/data/model/todo.dart';
import 'package:bloc_bootstrap/data/model/todo_create_form.dart';
import 'package:bloc_bootstrap/data/repository/todo_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_create_state.dart';

class TodoCreateCubit extends Cubit<TodoCreateState> {
  late final repository = TodoRepository();

  TodoCreateCubit() : super(TodoCreateInitial());

  resetForm() {
    emit(TodoCreateInitial());
  }

  createTodo(String description) async {
    emit(TodoCreateSendInProgress());
    try {
      final todoCreateForm = TodoCreateForm(description: description);
      final createdTodo = await repository.createTodo(todoCreateForm);
      emit(TodoCreateSendSuccess(createdTodo));
    } catch (error) {
      emit(TodoCreateSendFailure());
    }
  }
}
