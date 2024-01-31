part of 'todo_details_cubit.dart';

@immutable
abstract class TodoDetailsState {}

class TodoDetailsLoadInProgress extends TodoDetailsState {}

class TodoDetailsLoadSuccess extends TodoDetailsState {
  final Todo todo;

  TodoDetailsLoadSuccess(this.todo);
}

class TodoDetailsLoadFailure extends TodoDetailsState {}
