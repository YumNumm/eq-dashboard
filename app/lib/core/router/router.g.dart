// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRoute,
    ];

RouteBase get $appShellRoute => StatefulShellRouteData.$route(
      factory: $AppShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: MainBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $HomePageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/page-two',
              factory: $PageTwoRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsDisclosurePageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/dmdata',
              factory: $DmdataSettingsRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/display',
              factory: $DisplaysettingsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteExtension on AppShellRoute {
  static AppShellRoute _fromState(GoRouterState state) => const AppShellRoute();
}

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PageTwoRouteExtension on PageTwoRoute {
  static PageTwoRoute _fromState(GoRouterState state) => const PageTwoRoute();

  String get location => GoRouteData.$location(
        '/page-two',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsDisclosurePageRouteExtension on SettingsDisclosurePageRoute {
  static SettingsDisclosurePageRoute _fromState(GoRouterState state) =>
      const SettingsDisclosurePageRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DmdataSettingsRouteDataExtension on DmdataSettingsRouteData {
  static DmdataSettingsRouteData _fromState(GoRouterState state) =>
      const DmdataSettingsRouteData();

  String get location => GoRouteData.$location(
        '/dmdata',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DisplaysettingsRouteExtension on DisplaysettingsRoute {
  static DisplaysettingsRoute _fromState(GoRouterState state) =>
      const DisplaysettingsRoute();

  String get location => GoRouteData.$location(
        '/display',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'cae4a21bcd79ca12f0402b602ddbea4bf2084a89';

/// See also [router].
@ProviderFor(router)
final routerProvider = Provider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
