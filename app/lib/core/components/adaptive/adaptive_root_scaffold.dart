import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:eqdashboard/core/router/router.dart';
import 'package:eqdashboard/pages/home/children/platform_selector_screen.dart';
import 'package:eqdashboard/pages/settings/settings_disclosure_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class NavigationItem {
  const NavigationItem({
    required this.label,
    required this.path,
    this.icon,
    this.selectedIcon,
    this.disclosureItems,
  });

  final String label;
  final String path;
  final IconData? icon;
  final IconData? selectedIcon;
  final List<NavigationItem>? disclosureItems;

  @override
  String toString() => path;
}

class AdaptiveRootScaffold extends HookConsumerWidget {
  const AdaptiveRootScaffold({
    required this.child,
    required this.items,
    super.key,
    this.title,
  });

  final Widget child;
  final List<NavigationItem> items;
  final Widget? title;

  Iterable<NavigationItem> expandItem(
    NavigationItem item,
    // ignore: avoid_positional_boolean_parameters
    bool includeRoot,
  ) sync* {
    final disclosureItems = item.disclosureItems;
    if (disclosureItems != null) {
      if (includeRoot) {
        yield item;
      }
      yield* disclosureItems;
    } else {
      yield item;
    }
  }

  List<NavigationItem> getRouteList(AdaptivePlatformType platform) {
    if (platform == AdaptivePlatformType.macos) {
      // 子を持つNavigationItemは除外
      return items.expand((item) => expandItem(item, false)).toList();
    } else {
      return items.expand((item) => expandItem(item, true)).toList();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platform = AdaptivePlatformScope.of(context);
    final selectedIndex = useState(0);

    ref.listen(adaptivePlatformProvider, (_, next) {
      final routes = getRouteList(next);
      final currentRouteLocation = switch (next) {
        AdaptivePlatformType.macos =>
          const PlatformSelectorRouteData().location,
        AdaptivePlatformType.cupertino ||
        AdaptivePlatformType.material =>
          const SettingsDisclosurePageRoute().location,
      };
      selectedIndex.value = routes.indexWhere(
        (route) => route.path == currentRouteLocation,
      );
    });

    void onItemSelected(int index) {
      selectedIndex.value = index;

      final item = getRouteList(platform)[index];
      context.go(item.path);
    }

    return switch (platform) {
      AdaptivePlatformType.macos =>
        _buildMacosScaffold(context, selectedIndex.value, onItemSelected),
      AdaptivePlatformType.cupertino =>
        _buildCupertinoScaffold(context, selectedIndex.value, onItemSelected),
      AdaptivePlatformType.material =>
        _buildMaterialScaffold(context, selectedIndex.value, onItemSelected),
    };
  }

  Widget _buildMacosScaffold(
    BuildContext context,
    int selectedIndex,
    void Function(int) onItemSelected,
  ) {
    SidebarItem extractNavigationItem(NavigationItem item) => SidebarItem(
          label: Text(item.label),
          disclosureItems:
              item.disclosureItems?.map(extractNavigationItem).toList(),
        );

    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 150,
        builder: (context, scrollController) {
          return SidebarItems(
            currentIndex: selectedIndex,
            scrollController: scrollController,
            itemSize: SidebarItemSize.large,
            onChanged: onItemSelected,
            items: items.map((item) {
              final disclosureItems = item.disclosureItems;
              return SidebarItem(
                label: Text(item.label),
                disclosureItems: disclosureItems
                    ?.map(
                      extractNavigationItem,
                    )
                    .toList(),
              );
            }).toList(),
          );
        },
      ),
      child: ContentArea(
        builder: (context, scrollController) {
          return child;
        },
      ),
    );
  }

  Widget _buildCupertinoScaffold(
    BuildContext context,
    int selectedIndex,
    void Function(int) onItemSelected,
  ) {
    final currentIndex = selectedIndex;

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          for (final item in items)
            BottomNavigationBarItem(
              icon: Icon(item.icon ?? Icons.circle),
              activeIcon: Icon(item.selectedIcon ?? item.icon ?? Icons.circle),
              label: item.label,
            ),
        ],
        currentIndex: currentIndex,
        onTap: onItemSelected,
      ),
      tabBuilder: (context, index) {
        final item = items[index];
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(item.label),
          ),
          child: SafeArea(
            child: index == currentIndex ? child : const SizedBox(),
          ),
        );
      },
    );
  }

  Widget _buildMaterialScaffold(
    BuildContext context,
    int selectedIndex,
    void Function(int) onItemSelected,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            destinations: [
              for (final item in items)
                NavigationRailDestination(
                  icon: Icon(item.icon ?? Icons.circle),
                  selectedIcon:
                      Icon(item.selectedIcon ?? item.icon ?? Icons.circle),
                  label: Text(item.label),
                ),
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: onItemSelected,
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
