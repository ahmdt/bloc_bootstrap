import 'package:bloc_bootstrap/usecase/navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';

class NavigationScaffold extends StatelessWidget {
  const NavigationScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
