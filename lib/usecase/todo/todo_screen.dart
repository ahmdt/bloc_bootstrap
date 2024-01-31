import 'package:bloc_bootstrap/res/router/app_route.dart';
import 'package:bloc_bootstrap/usecase/todo/_widgets/TodoItem.dart';
import 'package:bloc_bootstrap/usecase/todo/todo_cubit.dart';
import 'package:bloc_bootstrap/usecase/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () => context.goNamed(AppRoute.todoCreate.name),
      ),
      body: BlocProvider.value(
        value: context.read<TodoCubit>()..initScreen(),
        child: BlocBuilder<TodoCubit, TodoState>(
          builder: (context, state) {
            if (state.fetchTodosStatus.isInProgress) {
              return const CircularProgressIndicator();
            }
            if (state.fetchTodosStatus.isFailure) {
              return Column(
                children: [
                  const Text('FAILED'),
                  ElevatedButton(
                    onPressed: () => context.read<TodoCubit>().fetchTodos(),
                    child: Text('Retry'),
                  ),
                ],
              );
            }
            if (state.fetchTodosStatus.isSuccess) {
              return ListView(
                children: state.todos.map((todo) => TodoListItem(todoSlim: todo)).toList(),
              );
            }
            return Column(
              children: [
                ElevatedButton(
                  onPressed: () => context.read<TodoCubit>().fetchTodos(),
                  child: const Text('Fetch Todos'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
