import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/core/components/app_icon.dart';
import 'package:eqdashboard/core/components/platform/platform_alert_dialog.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:eqdashboard/features/dmdata/auth/notifier/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// {@template eqdashboard.LoginSection}
/// DMDATAログインセクション
/// {@endtemplate}
class LoginSection extends ConsumerWidget {
  /// {@macro eqdashboard.LoginSection}
  const LoginSection({super.key});

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