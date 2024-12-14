import 'package:eqdashboard/pages/home/children/dmdata_settings_screen.dart';
import 'package:eqdashboard/pages/home/home_page.dart';
import 'package:eqdashboard/pages/page_one/page_one.dart';
import 'package:eqdashboard/pages/page_two/page_two.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) => GoRouter(
      routes: $appRoutes,
      initialLocation: '/page-one',
      debugLogDiagnostics: kDebugMode,
    );

@TypedShellRoute<MyShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<PageOneRouteData>(path: '/page-one'),
    TypedGoRoute<PageTwoRouteData>(path: '/page-two'),
    TypedGoRoute<DmdataSettingsRouteData>(path: '/dmdata-settings'),
  ],
)
class MyShellRouteData extends ShellRouteData {
  const MyShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return HomePage(child: navigator);
  }
}

class PageOneRouteData extends GoRouteData {
  const PageOneRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const PageOne(),
    );
  }
}

class PageTwoRouteData extends GoRouteData {
  const PageTwoRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const PageTwo(),
    );
  }
}

class DmdataSettingsRouteData extends GoRouteData {
  const DmdataSettingsRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const DmdataSettingsScreen(),
    );
  }
}
