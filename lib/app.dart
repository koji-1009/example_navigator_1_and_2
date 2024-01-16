import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_1_and_2/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = GoRouter(
    routes: $appRoutes,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigation Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: _router,
    );
  }
}
