import 'package:eqdashboard/core/components/intenisty/intensity_icon_type.dart';
import 'package:eqdashboard/core/gen/fonts.gen.dart';
import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:eqdashboard/features/earthquake/intensity_icon/model/intensity_color_scheme.dart';
import 'package:eqdashboard/features/earthquake/intensity_icon/notifier/intensity_color_scheme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JmaLgIntensityIcon extends ConsumerWidget {
  const JmaLgIntensityIcon({
    required this.intensity,
    required this.type,
    this.customText,
    super.key,
    this.size = 50,
  });

  final JmaLgIntensity intensity;
  final IntensityIconType type;
  final double size;
  final String? customText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intensityColorScheme =
        ref.watch(intensityColorSchemeNotifierProvider);
    final colorScheme = intensityColorScheme.fromJmaLgIntensity(intensity);
    final (fg, bg) = (colorScheme.foreground, colorScheme.background);

    final borderColor = Color.lerp(
      bg,
      fg,
      0.3,
    )!;
    return switch (type) {
      IntensityIconType.small => SizedBox(
          height: size,
          width: size,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bg,
              border: Border.all(
                color: borderColor,
                width: 5,
              ),
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  intensity.type,
                  style: TextStyle(
                    color: fg,
                    fontSize: 100,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
        ),
      IntensityIconType.smallWithoutText => SizedBox(
          height: size,
          width: size,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bg,
              border: Border.all(
                color: borderColor,
                width: 5,
              ),
            ),
          ),
        ),
      IntensityIconType.filled => SizedBox(
          height: size,
          width: size,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: bg,
              // 角丸にする
              borderRadius: BorderRadius.circular(size / 5),
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: (customText != null)
                    ? Text(
                        customText!,
                        style: TextStyle(
                          color: fg,
                          fontSize: 100,
                          fontWeight: FontWeight.w900,
                          fontFamily: FontFamily.jetBrainsMono,
                        ),
                      )
                    : Text(
                        intensity.type,
                        style: TextStyle(
                          color: fg,
                          fontSize: 100,
                          fontWeight: FontWeight.w900,
                          fontFamily: FontFamily.jetBrainsMono,
                        ),
                      ),
              ),
            ),
          ),
        ),
    };
  }
}
