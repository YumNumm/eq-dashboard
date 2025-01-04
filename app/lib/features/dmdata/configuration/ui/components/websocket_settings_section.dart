import 'package:eqdashboard/core/components/platform/adaptive_list_section.dart';
import 'package:eqdashboard/core/components/platform/platform_action_sheet.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_list_tile.dart';
import 'package:eqdashboard/core/components/platform/platform_switch.dart';
import 'package:eqdashboard/features/dmdata/configuration/data/notifier/dmdata_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WebSocketSettingsSection extends ConsumerWidget {
  const WebSocketSettingsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dmdataConfig = ref.watch(dmdataConfigurationProvider);

    return AdaptiveListSection(
      header: const Text('WebSocket設定'),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      footer: const Text(
        'WebSocketの設定を行います。',
      ),
      children: [
        PlatformListTile(
          title: const Text('Ping間隔'),
          subtitle: Text(
            '${dmdataConfig.webSocket.pingInterval.inSeconds}秒',
          ),
          trailing: PlatformButton.text(
            child: const Text('変更'),
            onPressed: () async {
              final duration = await showCupertinoModalPopup<Duration>(
                context: context,
                builder: (context) => PlatformActionSheet(
                  title: const Text('Ping間隔'),
                  message: const Text('Pingを送信する間隔を選択してください'),
                  actions: [
                    for (final seconds in [10, 30, 60])
                      PlatformActionSheetAction(
                        onPressed: () => Navigator.of(context)
                            .pop(Duration(seconds: seconds)),
                        child: Text('$seconds秒'),
                      ),
                  ],
                  cancelButton: PlatformActionSheetAction(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('キャンセル'),
                  ),
                ),
              );
              if (duration != null) {
                await ref.read(dmdataConfigurationProvider.notifier).save(
                      dmdataConfig.copyWith(
                        webSocket: dmdataConfig.webSocket
                            .copyWith(pingInterval: duration),
                      ),
                    );
              }
            },
          ),
        ),
        PlatformListTile(
          title: const Text('接続タイムアウト'),
          subtitle: Text(
            '${dmdataConfig.webSocket.connectionTimeout.inSeconds}秒',
          ),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Text('変更'),
            onPressed: () async {
              final duration = await showCupertinoModalPopup<Duration>(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: const Text('接続タイムアウト'),
                  message: const Text('接続タイムアウトの時間を選択してください'),
                  actions: [
                    for (final seconds in [10, 30, 60])
                      PlatformActionSheetAction(
                        onPressed: () => Navigator.of(context)
                            .pop(Duration(seconds: seconds)),
                        child: Text('$seconds秒'),
                      ),
                  ],
                  cancelButton: PlatformActionSheetAction(
                    isDestructiveAction: true,
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('キャンセル'),
                  ),
                ),
              );
              if (duration != null) {
                await ref.read(dmdataConfigurationProvider.notifier).save(
                      dmdataConfig.copyWith(
                        webSocket: dmdataConfig.webSocket
                            .copyWith(connectionTimeout: duration),
                      ),
                    );
              }
            },
          ),
        ),
        PlatformSwitchListTile(
          value: dmdataConfig.webSocket.forceDisconnectOtherConnectionWhenFull,
          onChanged: (value) async {
            await ref.read(dmdataConfigurationProvider.notifier).save(
                  dmdataConfig.copyWith(
                    webSocket: dmdataConfig.webSocket.copyWith(
                      forceDisconnectOtherConnectionWhenFull: value,
                    ),
                  ),
                );
          },
          title: const Text('WebSocketの強制接続'),
          subtitle: const Text(
            '既にWebSocket接続数上限に達している場合に、接続済みのクライアントを切断し、本アプリケーションの接続を試みます。',
          ),
        ),
      ],
    );
  }
}
