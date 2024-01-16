// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'word/navigator-1',
          factory: $Navigator1WordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'word/navigator-2',
          factory: $Navigator2WordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'push/navigator-1',
          factory: $Navigator1PushRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'push/navigator-2',
          factory: $Navigator2PushRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'new',
              factory: $Navigator2PushNewRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Navigator1WordRouteExtension on Navigator1WordRoute {
  static Navigator1WordRoute _fromState(GoRouterState state) =>
      const Navigator1WordRoute();

  String get location => GoRouteData.$location(
        '/word/navigator-1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Navigator2WordRouteExtension on Navigator2WordRoute {
  static Navigator2WordRoute _fromState(GoRouterState state) =>
      Navigator2WordRoute(
        word: state.uri.queryParameters['word'] ?? '',
      );

  String get location => GoRouteData.$location(
        '/word/navigator-2',
        queryParams: {
          if (word != '') 'word': word,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Navigator1PushRouteExtension on Navigator1PushRoute {
  static Navigator1PushRoute _fromState(GoRouterState state) =>
      const Navigator1PushRoute();

  String get location => GoRouteData.$location(
        '/push/navigator-1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Navigator2PushRouteExtension on Navigator2PushRoute {
  static Navigator2PushRoute _fromState(GoRouterState state) =>
      const Navigator2PushRoute();

  String get location => GoRouteData.$location(
        '/push/navigator-2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Navigator2PushNewRouteExtension on Navigator2PushNewRoute {
  static Navigator2PushNewRoute _fromState(GoRouterState state) =>
      const Navigator2PushNewRoute();

  String get location => GoRouteData.$location(
        '/push/navigator-2/new',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
