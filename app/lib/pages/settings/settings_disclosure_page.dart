import 'package:eqdashboard/core/components/adaptive/adaptive_disclosure_page.dart';
import 'package:eqdashboard/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsDisclosurePageRoute extends GoRouteData {
  const SettingsDisclosurePageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const SettingsDisclosurePage(),
    );
  }
}

class SettingsDisclosurePage extends StatelessWidget {
  const SettingsDisclosurePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveDisclosurePage(
      title: '設定',
      disclosureItems: HomePage.navigationItems
          .firstWhere((e) => e.path.startsWith('/settings'))
          .disclosureItems!,
    );
  }
}
