import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/core/components/app_icon.dart';
import 'package:eqdashboard/core/components/platform/platform_alert_dialog.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_scaffold.dart';
import 'package:eqdashboard/core/components/platform/platform_tab_view.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:eqdashboard/features/auth/notifier/auth_notifier.dart';
import 'package:eqdashboard/features/dmdata/contract/ui/contract_list_view.dart';
import 'package:eqdashboard/features/dmdata/contract/ui/websocket_avaiable_count_view.dart';
import 'package:eqdashboard/features/dmdata/websocket/ui/websocket_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class DmdataSettingsRouteData extends GoRouteData {
  const DmdataSettingsRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const DmdataSettingsScreen(),
    );
  }
}

class DmdataSettingsScreen extends ConsumerWidget {
  const DmdataSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return PlatformScaffold(
      title: const Text('Project DM-D.S.S 設定'),
      appBar: const PlatformAppBar(
        title: Text('Project DM-D.S.S 設定'),
      ),
      child: authState.when(
        data: (state) => const _DmdataSettingsContent(),
        loading: () => const Center(
          child: ProgressCircle(),
        ),
        error: (error, stack) => PlatformErrorCard.provider(
          error: error,
          provider: authProvider,
        ),
      ),
    );
  }
}

class _DmdataSettingsContent extends ConsumerWidget {
  const _DmdataSettingsContent();

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
          const _LoginSection()
        else
          const Expanded(
            child: _UserInfoSection(),
          ),
      ],
    );
  }
}

class _LoginSection extends ConsumerWidget {
  const _LoginSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('現在ログインしていません'),
          const SizedBox(height: 16),
          PlatformButton.filled(
            onPressed: () async => _handleLogin(context, ref),
            child: const Text('DMDATAにログイン'),
          ),
        ],
      ),
    );
  }

  Future<void> _handleLogin(BuildContext context, WidgetRef ref) async {
    final result = await ref.read(authProvider.notifier).startAuthorization();
    if (result case Failure(:final error) when context.mounted) {
      if (error is FlutterAppAuthUserCancelledException) {
        await showPlatformAlertDialog<void>(
          context: context,
          title: 'ログインをキャンセルしました',
          message: Text(
            'Error code: ${error.code}',
            textAlign: TextAlign.center,
          ),
          icon: const AppIcon(size: 64),
        );
      }
    }
  }
}

class _UserInfoSection extends ConsumerWidget {
  const _UserInfoSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider).value!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Access Token: ${state.accessToken.substring(0, 6)}...'),
              Text('Refresh Token: ${state.refreshToken.substring(0, 6)}...'),
              Text('Expire: ${state.expiresAt}'),
              Text('RefreshTokenExpire: ${state.refreshTokenExpiresAt}'),
              Text('Scope: ${state.scopes}'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(8),
          child: PlatformButton.filled(
            onPressed: () async => ref.read(authProvider.notifier).logout(),
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
                label: '契約状況',
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
    );
  }
}
