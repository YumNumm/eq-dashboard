import 'package:eqdashboard/features/auth/notifier/auth_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class DMDataSettingsScreen extends ConsumerWidget {
  const DMDataSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return MacosScaffold(
      toolBar: const ToolBar(
        title: Text('DMDATA設定'),
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
                          onPressed: () {
                            ref
                                .read(authProvider.notifier)
                                .startAuthorization();
                          },
                          child: const Text('DMDATAにログイン'),
                        ),
                      ] else ...[
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
                error: (error, stack) => Center(
                  child: Text('エラーが発生しました: $error'),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
