import 'package:eqdashboard/pages/home/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) => GoRouter(
      routes: $appRoutes,
      initialLocation: '/',
      debugLogDiagnostics: kDebugMode,
    );

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
