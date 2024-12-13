import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 200,
        builder: (context, scrollController) {
          return SidebarItems(
            currentIndex: 0,
            scrollController: scrollController,
            itemSize: SidebarItemSize.large,
            onChanged: (i) {},
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
        toolBar: ToolBar(
          title: Text('EQDashboard'),
          actions: [
            ToolBarIconButton(
              label: 'Settings',
              showLabel: true,
              icon: Icon(CupertinoIcons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
