import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum _EewDisplayTimeType {
  originTime,
  detectionTime,
  updatedAt,
  ;

  String get displayName => switch (this) {
        originTime => '発生時刻',
        detectionTime => '検知時刻',
        updatedAt => '最終更新',
      };
}

class EewListCard extends StatelessWidget {
  const EewListCard({
    required this.item,
    super.key,
  });

  final EewListItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final dateFormat = DateFormat('MM/dd HH:mm:ss');

    final cardColor = item.isCanceled
        ? Colors.red.withValues(alpha: 0.1)
        : (item.isWarning ?? false)
            ? Colors.red.withValues(alpha: 0.2)
            : Colors.grey.withValues(alpha: 0.1);

    final displayTime = switch ((
      item.earthquake?.originTime,
      item.earthquake?.detectionTime,
      item.updatedAt
    )) {
      (final DateTime originTime, _, _) => (
          _EewDisplayTimeType.originTime,
          originTime
        ),
      (_, final DateTime detectionTime, _) => (
          _EewDisplayTimeType.detectionTime,
          detectionTime
        ),
      (_, _, final DateTime updatedAt) => (
          _EewDisplayTimeType.updatedAt,
          updatedAt
        ),
    };

    return Card(
      margin: EdgeInsets.zero,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${displayTime.$1.displayName}: '
                  '${dateFormat.format(displayTime.$2.toLocal())}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (item.isCanceled)
                  Chip(
                    label: const Text('キャンセル報'),
                    labelStyle: TextStyle(color: colorScheme.onErrorContainer),
                    backgroundColor: colorScheme.errorContainer,
                  )
                else if (item.isLastReport)
                  Chip(
                    label: const Text('最終報'),
                    backgroundColor: colorScheme.primaryContainer,
                    labelStyle:
                        TextStyle(color: colorScheme.onPrimaryContainer),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (item.earthquake != null) ...[
              _buildEarthquakeInfo(item.earthquake!, theme),
              const SizedBox(height: 8),
            ],
            if (item.intensity != null) ...[
              _buildIntensityInfo(item.intensity!, theme),
              const SizedBox(height: 8),
            ],
            if (item.text != null)
              Text(
                item.text ?? '',
                style: theme.textTheme.bodyMedium,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildEarthquakeInfo(EewEarthquake earthquake, ThemeData theme) {
    final location = earthquake.hypocenterName;
    final depth = earthquake.depth != null
        ? '深さ${earthquake.depth}km'
        : earthquake.depthCondition?.toString() ?? '深さ不明';
    final magnitude = earthquake.magnitude != null
        ? 'M${earthquake.magnitude}'
        : earthquake.magnitudeCondition ?? 'M不明';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          location,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$magnitude $depth',
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildIntensityInfo(EewIntensity intensity, ThemeData theme) {
    final maxInt = intensity.forecastMaxIntensity;
    final maxLgInt = intensity.forecastMaxLgIntensity;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '予想最大震度: ${_formatIntensityRange(maxInt.from, maxInt.to)}',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        if (maxLgInt != null)
          Text(
            '予想最大長周期地震動階級: '
            '${_formatLgIntensityRange(maxLgInt.from, maxLgInt.to)}',
            style: theme.textTheme.bodyMedium,
          ),
      ],
    );
  }

  String _formatIntensityRange(JmaIntensity from, JmaIntensity to) {
    if (from == to) {
      return '震度${from.value}';
    }
    return '震度${from.value} ～ 震度${to.value}';
  }

  String _formatLgIntensityRange(JmaLgIntensity from, JmaLgIntensity to) {
    if (from == to) {
      return '階級${from.value}';
    }
    return '${from.value} ～ ${to.value}';
  }
}
