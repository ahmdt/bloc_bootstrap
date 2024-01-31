import 'package:bloc_bootstrap/res/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsScreen'),
      ),
      body: Column(
        children: [
          const Center(child: Text('SettingsScreen')),
          ElevatedButton(
            onPressed: () => context.goNamed(AppRoute.login.name),
            child: const Text('Go to Login'),
          ),
        ],
      ),
    );
  }
}
