import 'package:eqdashboard/core/components/platform/adaptive_list_section.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_list_tile.dart';
import 'package:eqdashboard/features/dmdata/configuration/data/notifier/dmdata_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PollingSettingsSection extends ConsumerWidget {
  const PollingSettingsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dmdataConfig = ref.watch(dmdataConfigurationProvider);

    return AdaptiveListSection(
      header: const Text('ポーリング設定'),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      footer: const Text(
        'ポーリングの間隔を設定します。',
      ),
      children: [
        PlatformListTile(
          title: const Text('地震情報取得間隔'),
          subtitle: Text(
            '${dmdataConfig.polling.earthquakeListFetchInterval.inSeconds}秒',
          ),
          trailing: PlatformButton.text(
            child: const Text('変更'),
            onPressed: () async {
              final duration = await showCupertinoModalPopup<Duration>(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: const Text('地震情報取得間隔'),
                  message: const Text('地震情報を取得する間隔を選択してください'),
                  actions: [
                    for (final seconds in [10, 30, 60])
                      CupertinoActionSheetAction(
                        onPressed: () => Navigator.of(context)
                            .pop(Duration(seconds: seconds)),
                        child: Text('$seconds秒'),
                      ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDestructiveAction: true,
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('キャンセル'),
                  ),
                ),
              );
              if (duration != null) {
                await ref.read(dmdataConfigurationProvider.notifier).save(
                      dmdataConfig.copyWith(
                        polling: dmdataConfig.polling
                            .copyWith(earthquakeListFetchInterval: duration),
                      ),
                    );
              }
            },
          ),
        ),
      ],
    );
  }
}
