// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: MainBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $PageOneRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/page-two',
              factory: $PageTwoRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsDisclosurePageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/dmdata-settings',
              factory: $DmdataSettingsRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $PageOneRouteDataExtension on PageOneRouteData {
  static PageOneRouteData _fromState(GoRouterState state) =>
      const PageOneRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PageTwoRouteDataExtension on PageTwoRouteData {
  static PageTwoRouteData _fromState(GoRouterState state) =>
      const PageTwoRouteData();

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
        '/dmdata-settings',
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

String _$routerHash() => r'5afe12e57e724ea4035bda0510fcacf7e7f3c85f';

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
