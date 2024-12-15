import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/platform_root_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformDisclosurePage extends StatelessWidget {
  const PlatformDisclosurePage({
    required this.disclosureItems,
    required this.title,
    super.key,
  });

  final List<NavigationItem> disclosureItems;
  final String title;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => _buildMacosDisclosurePage(context),
      AdaptivePlatformType.cupertino => _buildCupertinoDisclosurePage(context),
      AdaptivePlatformType.material => _buildMaterialDisclosurePage(context),
    };
  }

  Widget _buildMacosDisclosurePage(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(title),
      ),
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return ListView.builder(
              controller: scrollController,
              itemCount: disclosureItems.length,
              itemBuilder: (context, index) {
                final item = disclosureItems[index];
                return MacosListTile(
                  leading: item.icon != null ? Icon(item.icon) : null,
                  title: Text(item.label),
                  onClick: () async => context.push<void>(item.path),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildCupertinoDisclosurePage(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: SafeArea(
        child: ListView.builder(
          itemCount: disclosureItems.length,
          itemBuilder: (context, index) {
            final item = disclosureItems[index];
            return CupertinoListTile(
              leading: item.icon != null ? Icon(item.icon) : null,
              title: Text(item.label),
              trailing: const CupertinoListTileChevron(),
              onTap: () async => context.push<void>(item.path),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMaterialDisclosurePage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: disclosureItems.length,
        itemBuilder: (context, index) {
          final item = disclosureItems[index];
          return ListTile(
            leading: item.icon != null ? Icon(item.icon) : null,
            title: Text(item.label),
            onTap: () async => context.push<void>(item.path),
          );
        },
      ),
    );
  }
}
