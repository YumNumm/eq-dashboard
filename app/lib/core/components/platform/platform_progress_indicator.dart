import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformProgressIndicator extends StatelessWidget {
  const PlatformProgressIndicator({
    super.key,
    this.value,
    this.size = 10,
    this.platformOverride,
  });

  /// 進行状況を示す値（0.0から1.0）
  /// nullの場合は不定のプログレスインジケーターを表示
  final double? value;

  /// プログレスインジケーターのサイズ
  /// デフォルトは10
  final double size;

  final AdaptivePlatformType? platformOverride;

  @override
  Widget build(BuildContext context) {
    final platform = platformOverride ?? AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => ProgressCircle(
          value: value,
          radius: size,
        ),
      AdaptivePlatformType.cupertino => value != null
          ? CupertinoActivityIndicator.partiallyRevealed(
              progress: value!,
              radius: size,
            )
          : const CupertinoActivityIndicator(),
      AdaptivePlatformType.material => value != null
          ? CircularProgressIndicator(
              value: value,
              strokeWidth: size,
            )
          : const CircularProgressIndicator(),
    };
  }
}
