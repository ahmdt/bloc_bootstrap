import 'package:bloc_bootstrap/data/model/todo_slim.dart';
import 'package:bloc_bootstrap/res/router/app_route.dart';
import 'package:bloc_bootstrap/usecase/home/home_screen.dart';
import 'package:bloc_bootstrap/usecase/login/login_screen.dart';
import 'package:bloc_bootstrap/usecase/navigation/navigation_scaffold.dart';
import 'package:bloc_bootstrap/usecase/settings/settings_screen.dart';
import 'package:bloc_bootstrap/usecase/todo/details/todo_details_screen.dart';
import 'package:bloc_bootstrap/usecase/todo/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../usecase/todo/create/todo_create_screen.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>();
const pageKey = ValueKey("Home");
GoRouter generateRouter(GlobalKey<NavigatorState> navigatorKey) {
  return GoRouter(
    initialLocation: '/',
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: navigatorKey,
        name: AppRoute.login.name,
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      ShellRoute(
        // observers: [_heroController],
        parentNavigatorKey: navigatorKey,
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return NavigationScaffold(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: AppRoute.home.name,
            path: '/home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
              parentNavigatorKey: _shellNavigatorKey,
              name: AppRoute.todo.name,
              path: '/todo',
              builder: (BuildContext context, GoRouterState state) {
                return const TodoScreen(key: pageKey);
              },
              routes: [
                GoRoute(
                  name: AppRoute.todoCreate.name,
                  path: 'create',
                  builder: (BuildContext context, GoRouterState state) {
                    return const TodoCreateScreen();
                  },
                ),
                GoRoute(
                  name: AppRoute.todoDetails.name,
                  path: 'details',
                  builder: (BuildContext context, GoRouterState state) {
                    return TodoDetailsScreen(state.extra as TodoSlim);
                  },
                ),
              ]),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            name: AppRoute.settings.name,
            path: '/settings',
            builder: (BuildContext context, GoRouterState state) {
              return const SettingsScreen();
            },
          ),
        ],
      ),
    ],
  );
}
