import 'package:collection/collection.dart';
import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformTabItem {
  const PlatformTabItem({
    required this.label,
    required this.icon,
    this.selectedIcon,
  });

  final String label;
  final IconData icon;
  final IconData? selectedIcon;
}

class PlatformTabView extends HookWidget {
  const PlatformTabView({
    required this.tabs,
    required this.children,
    super.key,
    this.platformOverride,
    this.initialIndex = 0,
  }) : assert(tabs.length == children.length, 'タブとコンテンツの数が一致しません');

  final List<PlatformTabItem> tabs;
  final List<Widget> children;
  final int initialIndex;
  final AdaptivePlatformType? platformOverride;

  @override
  Widget build(BuildContext context) {
    final platform = platformOverride ?? AdaptivePlatformScope.of(context);
    final macOsTabController = useMemoized(
      () => MacosTabController(
        length: tabs.length,
        initialIndex: initialIndex,
      ),
      [tabs.length],
    );

    final tabController = useTabController(
      initialLength: tabs.length,
      initialIndex: initialIndex,
    );

    final currentIndex = useState(initialIndex);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosTabView(
          controller: macOsTabController,
          tabs: tabs
              .mapIndexed(
                (index, tab) => MacosTab(
                  label: tab.label,
                  active: index == macOsTabController.index,
                ),
              )
              .toList(),
          children: children,
        ),
      AdaptivePlatformType.cupertino => CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: tabs
                .map(
                  (tab) => BottomNavigationBarItem(
                    icon: Icon(tab.icon),
                    activeIcon: Icon(tab.selectedIcon ?? tab.icon),
                    label: tab.label,
                  ),
                )
                .toList(),
            currentIndex: currentIndex.value,
            onTap: (index) => currentIndex.value = index,
          ),
          tabBuilder: (context, index) => Column(
            children: [
              Expanded(
                child: children[index],
              ),
              const SizedBox(height: kToolbarHeight),
            ],
          ),
        ),
      AdaptivePlatformType.material => Column(
          children: [
            TabBar(
              controller: tabController,
              tabs: tabs
                  .map(
                    (tab) => Tab(
                      icon: Icon(
                        currentIndex.value == tabs.indexOf(tab)
                            ? tab.selectedIcon ?? tab.icon
                            : tab.icon,
                      ),
                      text: tab.label,
                    ),
                  )
                  .toList(),
              onTap: (index) => currentIndex.value = index,
            ),
            TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: children,
              
            ),
          ],
        ),
    };
  }
}
