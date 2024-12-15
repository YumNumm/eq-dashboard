import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/screen_size.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveMargin extends StatelessWidget {
  const AdaptiveMargin({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.of(context);
    final platform = AdaptivePlatformScope.of(context);
    final padding = switch (size) {
      ScreenSizeType.compact => 8.0,
      ScreenSizeType.medium => 16.0,
      ScreenSizeType.expanded => 24.0,
    };

    if (platform != AdaptivePlatformType.macos) {
      return child;
    }

    return Padding(
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
