import 'package:dio/dio.dart';
import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_button.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_scaffold.dart';
import 'package:eqdashboard/core/components/app_icon.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:eqdashboard/features/auth/notifier/auth_notifier.dart';
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

    return AdaptiveScaffold(
      title: const Text('Project DM-D.S.S 設定'),
      toolBar: const ToolBar(
        title: Text('Project DM-D.S.S 設定'),
        enableBlur: true,
        titleWidth: double.infinity,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: authState.when(
          data: (state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'アカウント情報',
                ),
                const SizedBox(height: 16),
                if (state == null) ...[
                  const Text('現在ログインしていません'),
                  const SizedBox(height: 16),
                  AdaptiveButton.filled(
                    onPressed: () async {
                      final result = await ref
                          .read(authProvider.notifier)
                          .startAuthorization();
                      if (result case Failure(:final error)
                          when context.mounted) {
                        if (error is FlutterAppAuthUserCancelledException) {
                          const title = 'ログインをキャンセルしました';
                          final message = 'Error code: ${error.code}';
                          await showMacosAlertDialog<void>(
                            context: context,
                            builder: (context) => MacosAlertDialog(
                              appIcon: const AppIcon(size: 64),
                              title: const Text(
                                title,
                              ),
                              message: Text(
                                message,
                                textAlign: TextAlign.center,
                              ),
                              primaryButton: PushButton(
                                controlSize: ControlSize.large,
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: const Text('DMDATAにログイン'),
                  ),
                ] else ...[
                  Text(
                    'Access Token: '
                    '${state.accessToken.substring(0, 6)}...',
                  ),
                  Text(
                    'Refresh Token: '
                    '${state.refreshToken.substring(0, 6)}...',
                  ),
                  Text('Expire: ${state.expiresAt}'),
                  Text(
                    'RefreshTokenExpire: ${state.refreshTokenExpiresAt}',
                  ),
                  Text('Scope: ${state.scopes}'),
                  const SizedBox(height: 16),
                  AdaptiveButton.filled(
                    onPressed: () async =>
                        ref.read(authProvider.notifier).logout(),
                    child: const Text('ログアウト'),
                  ),
                ],
              ],
            );
          },
          loading: () => const Center(
            child: ProgressCircle(),
          ),
          error: (error, stack) {
            final Widget child;
            if (error is DioException) {
              child = Center(
                child: SelectableText(
                  'エラーが発生しました: ${error.response?.data}',
                ),
              );
            } else {
              child = Center(
                child: SelectableText(
                  'エラーが発生しました: $error',
                ),
              );
            }
            return Column(
              children: [
                child,
                const SizedBox(height: 16),
                PushButton(
                  controlSize: ControlSize.large,
                  onPressed: () => ref.invalidate(authProvider),
                  child: const Text('再試行'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
