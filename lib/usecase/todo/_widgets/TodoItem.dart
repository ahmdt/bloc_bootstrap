import 'package:bloc_bootstrap/data/model/todo_slim.dart';
import 'package:bloc_bootstrap/res/router/app_route.dart';
import 'package:bloc_bootstrap/usecase/todo/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TodoListItem extends StatelessWidget {
  final TodoSlim todoSlim;
  const TodoListItem({
    super.key,
    required this.todoSlim,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todoSlim.description),
      // trailing: Icon(Icons.delete) ,
      trailing: IconButton(icon: Icon(Icons.delete), onPressed: () => context.read<TodoCubit>().fetchTodos()),
      onTap: () => context.goNamed(AppRoute.todoDetails.name, extra: todoSlim),
    );
  }
}
