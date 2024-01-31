import 'package:bloc_bootstrap/res/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: Column(
        children: [
          const Center(child: Text('LoginScreen')),
          ElevatedButton(
            onPressed: () => context.goNamed(AppRoute.home.name),
            child: const Text('Go to Home'),
          ),
        ],
      ),
    );
  }
}
