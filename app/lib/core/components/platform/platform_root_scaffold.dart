import 'package:cupertino_sidebar/cupertino_sidebar.dart';
import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/screen_size.dart';
import 'package:eqdashboard/core/router/router.dart';
import 'package:eqdashboard/pages/settings/children/display_settings_page.dart';
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

class PlatformRootScaffold extends HookConsumerWidget {
  const PlatformRootScaffold({
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
        AdaptivePlatformType.macos => const DisplaysettingsRoute().location,
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
        minWidth: 200,
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
    final screenSize = ScreenSize.of(context);
    final isCompact = screenSize == ScreenSizeType.compact;
    final currentIndex = selectedIndex;

    if (!isCompact) {
      return CupertinoPageScaffold(
        child: Stack(
          children: [
            SafeArea(
              child: child,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: DefaultTabController(
                  length: items.length,
                  child: Builder(
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: CupertinoFloatingTabBar(
                          isVibrant: true,
                          onDestinationSelected: onItemSelected,
                          tabs: [
                            for (var i = 0; i < items.length; i++)
                              CupertinoFloatingTab(
                                child: Text(
                                  items[i].label,
                                  style: const TextStyle(),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // コンパクトサイズの場合は従来のタブバー方式を使用
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
        return SafeArea(
          child: index == currentIndex ? child : const SizedBox(),
        );
      },
    );
  }

  Widget _buildMaterialScaffold(
    BuildContext context,
    int selectedIndex,
    void Function(int) onItemSelected,
  ) {
    final screenSize = ScreenSize.of(context);
    final isCompact = screenSize == ScreenSizeType.compact;

    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      bottomNavigationBar: isCompact
          ? BottomNavigationBar(
              items: [
                for (final item in items)
                  BottomNavigationBarItem(
                    icon: Icon(item.icon ?? Icons.circle),
                    activeIcon:
                        Icon(item.selectedIcon ?? item.icon ?? Icons.circle),
                    label: item.label,
                  ),
              ],
              currentIndex: selectedIndex,
              onTap: onItemSelected,
            )
          : null,
      body: Row(
        children: [
          if (!isCompact)
            NavigationRail(
              extended: screenSize == ScreenSizeType.expanded,
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
