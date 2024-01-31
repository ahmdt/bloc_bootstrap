import 'package:bloc_bootstrap/usecase/todo/create/todo_create_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCreateScreen extends StatefulWidget {
  const TodoCreateScreen({super.key});

  @override
  State<TodoCreateScreen> createState() => _TodoCreateScreenState();
}

class _TodoCreateScreenState extends State<TodoCreateScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoCreateScreen'),
        leading: const BackButton(),
      ),
      body: BlocProvider(
        create: (context) => TodoCreateCubit(),
        child: BlocBuilder<TodoCreateCubit, TodoCreateState>(
          builder: (context, state) {
            if (state is TodoCreateSendInProgress) {
              return const CircularProgressIndicator();
            }
            if (state is TodoCreateSendSuccess) {
              return Text('SUCCESSED with id ${state.createdTodo.toString()}');
            }
            if (state is TodoCreateSendFailure) {
              return Column(
                children: [
                  const Text('FAILED'),
                  ElevatedButton(
                    onPressed: () => context.read<TodoCreateCubit>().resetForm(),
                    child: Text('Reset'),
                  ),
                ],
              );
            }
            return Column(children: [
              TextField(controller: controller),
              ElevatedButton(
                onPressed: () => context.read<TodoCreateCubit>().createTodo(controller.text),
                child: const Text('Create'),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
