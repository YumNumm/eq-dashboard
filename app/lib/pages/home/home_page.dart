import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:macos_ui/macos_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 200,
        builder: (context, scrollController) {
          return SidebarItems(
            currentIndex: _calculateSelectedIndex(context),
            scrollController: scrollController,
            itemSize: SidebarItemSize.large,
            onChanged: (i) => _onItemSelected(i, context),
            items: const [
              SidebarItem(
                label: Text('Page One'),
              ),
              SidebarItem(
                label: Text('Page Two'),
              ),
              SidebarItem(
                label: Text('設定'),
                disclosureItems: [
                  SidebarItem(
                    label: Text('DMDATA設定'),
                  ),
                ],
              ),
            ],
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

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/page-one')) {
      return 0;
    }
    if (location.startsWith('/page-two')) {
      return 1;
    }
    if (location.startsWith('/dmdata-settings')) {
      return 2;
    }
    return 0;
  }

  void _onItemSelected(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/page-one');
      case 1:
        context.go('/page-two');
      case 2:
        context.go('/dmdata-settings');
    }
  }
}
