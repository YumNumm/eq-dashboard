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
            ],
          );
        },
      ),
      child: MacosScaffold(
        toolBar: const ToolBar(
          title: Text('EQDashboard'),
          actions: [
            ToolBarIconButton(
              label: 'Settings',
              showLabel: true,
              icon: Icon(CupertinoIcons.settings),
              onPressed: null,
            ),
          ],
        ),
        children: [
          ContentArea(
            builder: (context, scrollController) {
              return child;
            },
          ),
        ],
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
    return 0;
  }

  void _onItemSelected(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/page-one');
      case 1:
        context.go('/page-two');
    }
  }
}
