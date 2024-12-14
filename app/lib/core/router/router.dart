// ignore_for_file: avoid_classes_with_only_static_members

import 'package:eqdashboard/pages/home/children/dmdata_settings_screen.dart';
import 'package:eqdashboard/pages/home/children/platform_selector_screen.dart';
import 'package:eqdashboard/pages/home/home_page.dart';
import 'package:eqdashboard/pages/page_one/page_one.dart';
import 'package:eqdashboard/pages/page_two/page_two.dart';
import 'package:eqdashboard/pages/settings/settings_disclosure_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) => GoRouter(
      routes: $appRoutes,
      initialLocation: const PageOneRouteData().location,
      debugLogDiagnostics: kDebugMode,
      navigatorKey: rootNavigatorKey,
    );

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<MainBranch>(
      routes: [
        TypedGoRoute<PageOneRouteData>(path: '/'),
        TypedGoRoute<PageTwoRouteData>(path: '/page-two'),
        TypedGoRoute<SettingsDisclosurePageRoute>(
          path: '/settings',
        ),
        TypedGoRoute<DmdataSettingsRouteData>(path: '/dmdata-settings'),
        TypedGoRoute<PlatformSelectorRouteData>(path: '/platform-selector'),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return HomePage(child: navigationShell);
  }
}

class MainBranch extends StatefulShellBranchData {
  const MainBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
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
