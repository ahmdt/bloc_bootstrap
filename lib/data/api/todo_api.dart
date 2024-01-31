import 'package:bloc_bootstrap/data/model/todo.dart';
import 'package:bloc_bootstrap/data/model/todo_create_form.dart';
import 'package:dio/dio.dart';

class TodoApi {
  late Dio _dio;
  static const String baseUrl = 'https://crudcrud.com/api/886d2ccf2f21449886d8109165fd40f1';

  static const String resource = 'todo';

  TodoApi() {
    _dio = Dio();
  }

  Future<String> createTodo(TodoCreateForm todo) async {
    final response = await _dio.post<String>(
      '$baseUrl/$resource',
      data: todo.toJson(),
    );
    return response.data!;
  }

  Future<String> updateTodo(Todo todo) async {
    final response = await _dio.get<String>(
      '$baseUrl/$resource/${todo.id}',
      data: todo.toJson(),
    );
    return response.data!;
  }

  Future<String> getAllTodos() async {
    final response = await _dio.get<String>('$baseUrl/$resource');
    return response.data!;
  }

  Future<String> getTodo(String id) async {
    final response = await _dio.get<String>('$baseUrl/$resource/$id');
    return response.data!;
  }

  Future<String> deleteTodo(int id) async {
    final response = await _dio.delete<String>('$baseUrl/$resource/$id');
    return response.data!;
  }
}
