import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformErrorDialog extends StatelessWidget {
  const PlatformErrorDialog({
    required this.error,
    super.key,
    this.onDioExceptionStatusOverride,
    this.title,
    this.suffixMessage,
    this.onReload,
  });

  final Object error;
  final String? title;
  final String? suffixMessage;
  final String? Function(int statusCode)? onDioExceptionStatusOverride;
  final FutureOr<void> Function()? onReload;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);
    final message = _buildErrorMessage();

    return switch (platform) {
      AdaptivePlatformType.macos => MacosAlertDialog(
          appIcon: const Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red,
          ),
          title: Text(title ?? 'エラー'),
          message: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(message),
              if (suffixMessage != null) ...[
                const SizedBox(height: 8),
                SelectableText(suffixMessage!),
              ],
            ],
          ),
          primaryButton: PushButton(
            controlSize: ControlSize.large,
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context),
          ),
          secondaryButton: (onReload != null)
              ? PushButton(
                  controlSize: ControlSize.large,
                  secondary: true,
                  onPressed: onReload,
                  child: const Text('再試行'),
                )
              : null,
        ),
      AdaptivePlatformType.cupertino => CupertinoAlertDialog(
          title: Text(title ?? 'エラー'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(message),
              if (suffixMessage != null) ...[
                const SizedBox(height: 8),
                SelectableText(suffixMessage!),
              ],
            ],
          ),
          actions: [
            if (onReload != null)
              CupertinoDialogAction(
                onPressed: onReload,
                child: const Text('再試行'),
              ),
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      AdaptivePlatformType.material => AlertDialog(
          icon: const Icon(
            Icons.error_outline,
            size: 48,
            color: Colors.red,
          ),
          title: Text(title ?? 'エラー'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(message),
              if (suffixMessage != null) ...[
                const SizedBox(height: 8),
                SelectableText(suffixMessage!),
              ],
            ],
          ),
          actions: [
            if (onReload != null)
              TextButton(
                onPressed: onReload,
                child: const Text('再試行'),
              ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
    };
  }

  String _buildErrorMessage() {
    if (error is DioException) {
      if (error case DioException(:final response) when response != null) {
        final advancedErrorMessage = switch (response.data) {
          {'error': final String errorMsg} => errorMsg,
          _ => 'エラーが発生しました',
        };
        final statusCode = response.statusCode;
        if (statusCode != null) {
          final baseMessage = onDioExceptionStatusOverride?.call(statusCode) ??
              switch (statusCode) {
                400 => '不正なリクエストです',
                403 => 'アクセスが拒否されました',
                404 => 'リソースが見つかりません',
                500 => 'サーバーエラーが発生しました',
                503 => 'サービスが利用できません',
                _ => 'エラーが発生しました',
              };
          final data = response.data;
          if (data is Map<String, dynamic>) {
            if (data case DmdataErrorResponse(:final error)) {
              return '$baseMessage\n'
                  '$advancedErrorMessage\n'
                  '${error.code}: ${error.message}';
            }
            return '$baseMessage\n'
                '$advancedErrorMessage\n'
                '${const JsonEncoder.withIndent(' ').convert(data)}';
          }
          return '$baseMessage\n'
              '$advancedErrorMessage\n'
              '${response.data}';
        }
        return advancedErrorMessage;
      }
    }
    return 'エラーが発生しました\n($error)';
  }
}

/// エラーダイアログを表示するためのユーティリティ関数
Future<void> showPlatformErrorDialog({
  required BuildContext context,
  required Object error,
  String? title,
  String? suffixMessage,
  String? Function(int statusCode)? onDioExceptionStatusOverride,
  FutureOr<void> Function()? onReload,
}) {
  final platform = AdaptivePlatformScope.of(context);

  return switch (platform) {
    AdaptivePlatformType.macos => showMacosAlertDialog(
        context: context,
        builder: (context) => PlatformErrorDialog(
          error: error,
          title: title,
          suffixMessage: suffixMessage,
          onDioExceptionStatusOverride: onDioExceptionStatusOverride,
          onReload: onReload,
        ),
      ),
    AdaptivePlatformType.cupertino => showCupertinoDialog(
        context: context,
        builder: (context) => PlatformErrorDialog(
          error: error,
          title: title,
          suffixMessage: suffixMessage,
          onDioExceptionStatusOverride: onDioExceptionStatusOverride,
          onReload: onReload,
        ),
      ),
    AdaptivePlatformType.material => showDialog(
        context: context,
        builder: (context) => PlatformErrorDialog(
          error: error,
          title: title,
          suffixMessage: suffixMessage,
          onDioExceptionStatusOverride: onDioExceptionStatusOverride,
          onReload: onReload,
        ),
      ),
  };
}
