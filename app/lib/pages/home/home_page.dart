import 'package:eqdashboard/core/components/platform/platform_root_scaffold.dart';
import 'package:eqdashboard/core/router/router.dart';
import 'package:eqdashboard/pages/settings/children/dmdata_settings_screen.dart';
import 'package:eqdashboard/pages/settings/children/platform_selector_screen.dart';
import 'package:eqdashboard/pages/settings/settings_disclosure_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.child,
    super.key,
  });

  final Widget child;

  static final navigationItems = [
    NavigationItem(
      label: 'Page One',
      path: const PageOneRouteData().location,
      icon: Icons.one_k,
    ),
    NavigationItem(
      label: 'Page Two',
      path: const PageTwoRouteData().location,
      icon: Icons.two_k,
    ),
    () {
      final disclosureItems = [
        NavigationItem(
          label: 'Project DM-D.S.S 設定',
          path: const DmdataSettingsRouteData().location,
          icon: Icons.settings_applications,
        ),
        NavigationItem(
          label: 'プラットフォーム選択',
          path: const PlatformSelectorRouteData().location,
          icon: Icons.settings_applications,
        ),
      ];

      return NavigationItem(
        label: '設定',
        path: const SettingsDisclosurePageRoute().location,
        icon: Icons.settings,
        disclosureItems: disclosureItems,
      );
    }(),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformRootScaffold(
      items: navigationItems,
      child: child,
    );
  }
}
