import 'package:dio/dio.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AdaptiveErrorCard extends StatelessWidget {
  const AdaptiveErrorCard({
    required this.error,
    super.key,
    this.onRetry,
    this.retryText = '再試行',
  });

  static Widget provider({
    required Object error,
    required ProviderOrFamily provider,
    String retryText = '再試行',
  }) =>
      Consumer(
        builder: (context, ref, _) {
          return AdaptiveErrorCard(
            error: error,
            onRetry: () => ref.invalidate(provider),
            retryText: retryText,
          );
        },
      );

  final Object error;
  final VoidCallback? onRetry;
  final String retryText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDefaultErrorWidget(),
        if (onRetry != null) ...[
          const SizedBox(height: 16),
          AdaptiveButton.filled(
            onPressed: onRetry,
            child: Text(retryText),
          ),
        ],
      ],
    );
  }

  Widget _buildDefaultErrorWidget() {
    if (error is DioException) {
      final dioError = error as DioException;
      return Center(
        child: SelectableText(
          'エラーが発生しました: ${dioError.response?.data}',
        ),
      );
    }
    return Center(
      child: SelectableText('エラーが発生しました: $error'),
    );
  }
}
