part of 'todo_create_cubit.dart';

@immutable
abstract class TodoCreateState {}

class TodoCreateInitial extends TodoCreateState {}

class TodoCreateSendInProgress extends TodoCreateState {}

class TodoCreateSendSuccess extends TodoCreateState {
  final Todo createdTodo;
  TodoCreateSendSuccess(this.createdTodo) : super();
}

class TodoCreateSendFailure extends TodoCreateState {}
