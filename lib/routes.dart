import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_1_and_2/pages/components/new_scaffold.dart';
import 'package:navigator_1_and_2/pages/home.dart';
import 'package:navigator_1_and_2/pages/navigator_1_push.dart';
import 'package:navigator_1_and_2/pages/navigator_1_word.dart';
import 'package:navigator_1_and_2/pages/navigator_2_push.dart';
import 'package:navigator_1_and_2/pages/navigator_2_word.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<Navigator1WordRoute>(
      path: 'word/navigator-1',
    ),
    TypedGoRoute<Navigator2WordRoute>(
      path: 'word/navigator-2',
    ),
    TypedGoRoute<Navigator1PushRoute>(
      path: 'push/navigator-1',
    ),
    TypedGoRoute<Navigator2PushRoute>(
      path: 'push/navigator-2',
      routes: [
        TypedGoRoute<Navigator2PushNewRoute>(
          path: 'new',
        ),
      ]
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class Navigator1WordRoute extends GoRouteData {
  const Navigator1WordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Navigator1WordPage();
  }
}

class Navigator2WordRoute extends GoRouteData {
  const Navigator2WordRoute({
    this.word = '',
  });

  final String word;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Navigator2WordPage(
      word: word,
    );
  }
}

class Navigator1PushRoute extends GoRouteData {
  const Navigator1PushRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Navigator1PushPage();
  }
}

class Navigator2PushRoute extends GoRouteData {
  const Navigator2PushRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Navigator2PushPage();
  }
}

class Navigator2PushNewRoute extends GoRouteData {
  const Navigator2PushNewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NewScaffoldPage();
  }
}