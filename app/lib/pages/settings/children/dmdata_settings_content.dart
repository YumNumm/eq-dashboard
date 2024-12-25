import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_tab_view.dart';
import 'package:eqdashboard/features/dmdata/auth/notifier/auth_notifier.dart';
import 'package:eqdashboard/features/dmdata/contract/ui/contract_list_view.dart';
import 'package:eqdashboard/features/dmdata/contract/ui/websocket_avaiable_count_view.dart';
import 'package:eqdashboard/features/dmdata/websocket/ui/websocket_list_view.dart';
import 'package:eqdashboard/pages/settings/children/dmdata_settings_login_section.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// {@template eqdashboard.DmdataSettingsContent}
/// DM-D.S.S設定画面のメインコンテンツ
/// {@endtemplate}
class DmdataSettingsContent extends ConsumerWidget {
  /// {@macro eqdashboard.DmdataSettingsContent}
  const DmdataSettingsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider).value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'アカウント情報',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        if (authState == null)
          const LoginSection()
        else
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Access Token: '
                        '${authState.accessToken.substring(0, 6)}...',
                      ),
                      Text(
                        'Refresh Token: '
                        '${authState.refreshToken.substring(0, 6)}...',
                      ),
                      Text('Expire: ${authState.expiresAt}'),
                      Text(
                        'RefreshTokenExpire: '
                        '${authState.refreshTokenExpiresAt}',
                      ),
                      Text('Scope: ${authState.scopes}'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: PlatformButton.filled(
                    onPressed: () async =>
                        ref.read(authProvider.notifier).logout(),
                    child: const Text('ログアウト'),
                  ),
                ),
                const SizedBox(height: 4),
                const Divider(),
                const SizedBox(height: 4),
                Expanded(
                  child: PlatformTabView(
                    tabs: const [
                      PlatformTabItem(
                        label: 'WebSocket',
                        icon: Icons.web,
                      ),
                      PlatformTabItem(
                        label: '契約���況',
                        icon: Icons.person,
                      ),
                    ],
                    children: const [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16),
                          WebsocketAvailableCountView(),
                          Expanded(child: WebSocketListView()),
                        ],
                      ),
                      ContractListView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
