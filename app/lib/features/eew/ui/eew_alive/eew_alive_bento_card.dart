import 'package:eqdashboard/core/components/bento/bento_grid_card.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_alive_items.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EewAliveBentoCard extends HookConsumerWidget {
  const EewAliveBentoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eewItemsAsync = ref.watch(eewAliveItemsProvider);

    return BentoGridCard(
      header: const BentoGridCardHeader(
        title: Text('発表中の緊急地震速報'),
      ),
      child: eewItemsAsync.when(
        data: _buildEewList,
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('エラーが発生しました: $error')),
      ),
    );
  }

  Widget _buildEewList(List<EewListItem> items) {
    if (items.isEmpty) {
      return const Center(child: Text('現在発表中の緊急地震速報はありません'));
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final theme = Theme.of(context);
        final textTheme = theme.textTheme;

        if (item.isCanceled) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(item.text ?? '先ほどの緊急地震速報は取り消されました'),
              ),
            ),
          );
        }

        final header = Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Row(),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 4,
              children: [
                Text(
                  '緊急地震速報 ${item.isWarning == true ? "警報" : "予報"}',
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '#${item.serialNo}'
              '${item.isLastReport ? "(最終)" : ""}',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: textTheme.titleMedium?.color?.withOpacity(0.8),
              ),
            ),
          ],
        );

        final maxIntensityWidget = Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('最大震度'),
            if (item.intensity != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  item.intensity!.forecastMaxIntensity.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        );

        final hypoWidget = Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '震源地',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: textTheme.bodyMedium?.color?.withOpacity(0.8),
              ),
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                item.earthquake?.hypocenterName ?? '不明',
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        );

        final body = Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            const Row(),
            hypoWidget,
            if (item.earthquake != null) ...[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'M${item.earthquake?.magnitude ?? "不明"}',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '深さ${item.earthquake?.depth ?? "不明"}km',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ],
        );

        return Card(
          margin: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header,
                const Divider(),
                Row(
                  children: [
                    maxIntensityWidget,
                    const SizedBox(width: 16),
                    Expanded(child: body),
                  ],
                ),
                if (item.intensity?.forecastMaxLgIntensity != null) ...[
                  const Divider(),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text('最大LPGM'),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              item.intensity!.forecastMaxLgIntensity.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text('高層階では特に周期の長い揺れに注意してください'),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
