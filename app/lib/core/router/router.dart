// ignore_for_file: avoid_classes_with_only_static_members

import 'package:eqdashboard/core/provider/talker.dart';
import 'package:eqdashboard/pages/home/home_page.dart';
import 'package:eqdashboard/pages/page_one/page_one.dart';
import 'package:eqdashboard/pages/page_two/page_two.dart';
import 'package:eqdashboard/pages/settings/children/api_settings_page.dart';
import 'package:eqdashboard/pages/settings/children/display_settings_page.dart';
import 'package:eqdashboard/pages/settings/children/dmdata_settings_screen.dart';
import 'package:eqdashboard/pages/settings/children/log_settings_page.dart';
import 'package:eqdashboard/pages/settings/settings_disclosure_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final talker = ref.watch(talkerProvider);
  return GoRouter(
    routes: $appRoutes,
    initialLocation: const HomePageRoute().location,
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    observers: [
      TalkerRouteObserver(talker),
    ],
  );
}

@TypedStatefulShellRoute<AppShellRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<MainBranch>(
      routes: [
        TypedGoRoute<HomePageRoute>(path: '/'),
        TypedGoRoute<PageTwoRoute>(path: '/page-two'),
        TypedGoRoute<SettingsDisclosurePageRoute>(
          path: '/settings',
        ),
        TypedGoRoute<DmdataSettingsRouteData>(path: '/dmdata'),
        TypedGoRoute<DisplaysettingsRoute>(path: '/display'),
        TypedGoRoute<LogSettingsRoute>(path: '/log'),
        TypedGoRoute<ApiSettingsRoute>(path: '/api'),
      ],
    ),
  ],
)
class AppShellRoute extends StatefulShellRouteData {
  const AppShellRoute();

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

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const PageOne(),
    );
  }
}

class PageTwoRoute extends GoRouteData {
  const PageTwoRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const PageTwo(),
    );
  }
}
