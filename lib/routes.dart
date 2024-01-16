import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_1_and_2/pages/home.dart';
import 'package:navigator_1_and_2/pages/navigator_1_word.dart';
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
