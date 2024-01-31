import 'dart:convert';

import 'package:bloc_bootstrap/data/api/todo_api.dart';
import 'package:bloc_bootstrap/data/model/todo.dart';
import 'package:bloc_bootstrap/data/model/todo_create_form.dart';
import 'package:bloc_bootstrap/data/model/todo_slim.dart';

class TodoRepository {
  late TodoApi api;

  TodoRepository() {
    api = TodoApi();
  }

  Future<Todo> createTodo(TodoCreateForm todo) async {
    final encoded = await api.createTodo(todo);
    return Todo.fromJson(jsonDecode(encoded));
  }

  Future<Todo> updateTodo(Todo todo) async {
    final encoded = await api.updateTodo(todo);
    return Todo.fromJson(jsonDecode(encoded));
  }

  Future<List<TodoSlim>> getAllTodos() async {
    final encoded = await api.getAllTodos();
    final wrapped = '{"items": $encoded}';
    final parsedJson = jsonDecode(wrapped) as Map<String, dynamic>;
    final items = parsedJson['items'] as List<dynamic>;
    return items.map((todo) => TodoSlim.fromJson(todo)).toList();
  }

  Future<Todo> getTodo(String id) async {
    final encoded = await api.getTodo(id);
    return Todo.fromJson(jsonDecode(encoded));
  }

  Future<void> deleteTodo(int id) async {}
}
