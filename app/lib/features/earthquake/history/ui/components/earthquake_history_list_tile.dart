import 'package:eqdashboard/core/components/intenisty/intensity_icon_type.dart';
import 'package:eqdashboard/core/components/intenisty/jma_intensity_icon.dart';
import 'package:eqdashboard/core/gen/fonts.gen.dart';
import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_history_list_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class EarthquakeHistoryListTile extends HookConsumerWidget {
  const EarthquakeHistoryListTile({
    required this.item,
    this.onTap,
    super.key,
  });

  final EarthquakeHistoryListItem item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final dateFormatter = DateFormat('yyyy/MM/dd HH:mm');

    final title = item.hypocenter?.name ?? '不明';
    final timeString = switch ((item.originTime, item.arrivalTime)) {
      (final DateTime originTime, _) =>
        '${dateFormatter.format(originTime.toLocal())}頃発生 ',
      (_, final DateTime arrivalTime) =>
        '${dateFormatter.format(arrivalTime.toLocal())}頃検知 ',
    };
    final magnitude = item.hypocenter?.magnitude?.toStringAsFixed(1);
    final magnitudeCondition = item.hypocenter?.magnitudeCondition;
    final magnitudeString = switch (null) {
      _ when magnitudeCondition != null => magnitudeCondition,
      _ when magnitude != null => 'M$magnitude',
      _ => '',
    };

    final depthString =
        switch ((item.hypocenter?.depth, item.hypocenter?.depthCondition)) {
      (_, final DepthCondition condition) => '深さ ${condition.value}',
      (final int depth, _) => '深さ ${depth}km',
      _ => '',
    };

    final subTitle = '$timeString\n$magnitudeString $depthString';

    final maxIntensity = item.maxIntensity;

    final chips = <Widget>[
      if (item.maxLgIntensity != null &&
          item.maxLgIntensity != JmaLgIntensity.zero)
        Chip(
          label: Text('最大長周期地震動階級 ${item.maxLgIntensity}'),
          padding: EdgeInsets.zero,
        ),
    ];

    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: theme.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Wrap(
        spacing: 4,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            subTitle,
            style: const TextStyle(
              fontFamily: FontFamily.notoSansJP,
            ),
          ),
          ...chips,
        ],
      ),
      leading: maxIntensity != null
          ? JmaIntensityIcon(
              intensity: maxIntensity,
              type: IntensityIconType.filled,
            )
          : null,
    );
  }
}
