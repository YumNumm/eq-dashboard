import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EewListCard extends StatelessWidget {
  const EewListCard({
    required this.item,
    super.key,
  });

  final EewListItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('MM/dd HH:mm:ss');

    return Card(
      margin: EdgeInsets.zero,
      color: _getCardColor(item),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateFormat.format(item.updatedAt),
                  style: theme.textTheme.bodySmall,
                ),
                if (item.isCanceled)
                  const Chip(
                    label: Text('キャンセル'),
                    backgroundColor: Colors.red,
                  )
                else if (item.isLastReport)
                  const Chip(
                    label: Text('最終報'),
                    backgroundColor: Colors.grey,
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

  Color _getCardColor(EewListItem item) {
    if (item.isCanceled) {
      return Colors.red.withValues(alpha: 0.1);
    }
    if (item.isWarning ?? false) {
      return Colors.red.withValues(alpha: 0.2);
    }
    return Colors.grey.withValues(alpha: 0.1);
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
