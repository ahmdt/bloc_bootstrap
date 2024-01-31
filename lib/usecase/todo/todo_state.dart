import 'package:bloc_bootstrap/data/model/screen_status.dart';
import 'package:bloc_bootstrap/data/model/todo_slim.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    @Default(Status.initial) Status fetchTodosStatus,
    @Default(Status.initial) Status sendDeleteStatus,
    @Default([]) List<TodoSlim> todos,
  }) = _TodoState;
}
