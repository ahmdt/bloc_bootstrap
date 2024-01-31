import 'package:bloc_bootstrap/data/model/todo_slim.dart';
import 'package:bloc_bootstrap/usecase/todo/details/todo_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoDetailsScreen extends StatelessWidget {
  final TodoSlim todoSlim;
  const TodoDetailsScreen(this.todoSlim, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(todoSlim.description),
          leading: const BackButton(),
        ),
        body: BlocProvider(
          create: (BuildContext context) => TodoDetailsCubit()..fetchTodo(todoSlim.id),
          child: BlocBuilder<TodoDetailsCubit, TodoDetailsState>(
            builder: (BuildContext context, state) {
              if (state is TodoDetailsLoadFailure) {
                return const Text('FAAAILLL');
              }
              if (state is TodoDetailsLoadSuccess) {
                return Column(
                  children: [
                    Text('id: ${state.todo.id}'),
                    Text('description: ${state.todo.description}'),
                    Text('done: ${state.todo.done}'),
                  ],
                );
              }

              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}
