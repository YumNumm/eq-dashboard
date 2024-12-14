import 'package:dio/dio.dart';
import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/core/components/app_icon.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:eqdashboard/features/auth/notifier/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class DmdataSettingsScreen extends ConsumerWidget {
  const DmdataSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('Project DM-D.S.S 設定'),
        allowWallpaperTintingOverrides: true,
        enableBlur: true,
        automaticallyImplyLeading: true,
        titleWidth: double.infinity,
      ),
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: authState.when(
                data: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'アカウント情報',
                        style: MacosTheme.of(context).typography.headline,
                      ),
                      const SizedBox(height: 16),
                      if (state == null) ...[
                        const Text('現在ログインしていません'),
                        const SizedBox(height: 16),
                        PushButton(
                          controlSize: ControlSize.large,
                          onPressed: () async {
                            final result = await ref
                                .read(authProvider.notifier)
                                .startAuthorization();
                            if (result case Failure(:final error)) {
                              if (error
                                  is FlutterAppAuthUserCancelledException) {
                                final title = 'ログインをキャンセルしました';
                                final message = "Error code: " + error.code;
                                await showMacosAlertDialog<void>(
                                  context: context,
                                  builder: (context) => MacosAlertDialog(
                                    appIcon: AppIcon(size: 64),
                                    title: Text(
                                      title,
                                    ),
                                    message: Text(
                                      message,
                                      textAlign: TextAlign.center,
                                    ),
                                    primaryButton: PushButton(
                                      controlSize: ControlSize.large,
                                      child: Text('OK'),
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
                          'Access Token: ${state.accessToken.substring(0, 6)}...',
                        ),
                        Text(
                          'Refresh Token: ${state.refreshToken.substring(0, 6)}...',
                        ),
                        Text('Expire: ${state.expiresAt}'),
                        Text(
                          'RefreshTokenExpire: ${state.refreshTokenExpiresAt}',
                        ),
                        Text('Scope: ${state.scopes}'),
                        const SizedBox(height: 16),
                        PushButton(
                          controlSize: ControlSize.large,
                          onPressed: () {
                            ref.read(authProvider.notifier).logout();
                          },
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
                        style: MacosTheme.of(context).typography.body,
                      ),
                    );
                  } else {
                    child = Center(
                      child: SelectableText(
                        'エラーが発生しました: $error',
                        style: MacosTheme.of(context).typography.body,
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
            );
          },
        ),
      ],
    );
  }
}
