import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_1_and_2/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigation Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: GoRouter(
        routes: $appRoutes,
      ),
    );
  }
}
