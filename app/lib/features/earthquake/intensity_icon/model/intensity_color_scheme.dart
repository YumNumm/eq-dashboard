import 'dart:ui';

import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intensity_color_scheme.freezed.dart';
part 'intensity_color_scheme.g.dart';

@freezed
class IntensityColorScheme with _$IntensityColorScheme {
  const factory IntensityColorScheme({
    required TextColorModel unknown,
    required TextColorModel zero,
    required TextColorModel one,
    required TextColorModel two,
    required TextColorModel three,
    required TextColorModel four,
    required TextColorModel fiveLower,
    required TextColorModel fiveUpper,
    required TextColorModel sixLower,
    required TextColorModel sixUpper,
    required TextColorModel seven,
  }) = _IntensityColorScheme;

  factory IntensityColorScheme.fromJson(Map<String, dynamic> json) =>
      _$IntensityColorSchemeFromJson(json);

  factory IntensityColorScheme.fromBaseColors({
    required Color unknwon,
    required Color zero,
    required Color one,
    required Color two,
    required Color three,
    required Color four,
    required Color fiveLower,
    required Color fiveUpper,
    required Color sixLower,
    required Color sixUpper,
    required Color seven,
  }) =>
      IntensityColorScheme(
        unknown: TextColorModel.fromBackground(unknwon),
        zero: TextColorModel.fromBackground(zero),
        one: TextColorModel.fromBackground(one),
        two: TextColorModel.fromBackground(two),
        three: TextColorModel.fromBackground(three),
        four: TextColorModel.fromBackground(four),
        fiveLower: TextColorModel.fromBackground(fiveLower),
        fiveUpper: TextColorModel.fromBackground(fiveUpper),
        sixLower: TextColorModel.fromBackground(sixLower),
        sixUpper: TextColorModel.fromBackground(sixUpper),
        seven: TextColorModel.fromBackground(seven),
      );

  factory IntensityColorScheme.jma() => const IntensityColorScheme(
        zero: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 255, 255, 255),
        ),
        one: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 242, 242, 242),
        ),
        two: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 0, 170, 255),
        ),
        three: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 0, 65, 255),
        ),
        four: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 250, 230, 160),
        ),
        fiveLower: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 255, 230, 0),
        ),
        fiveUpper: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 255, 153, 0),
        ),
        sixLower: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 255, 40, 0),
        ),
        sixUpper: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 165, 0, 33),
        ),
        seven: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 180, 0, 104),
        ),
        unknown: TextColorModel(
          foreground: Colors.white,
          background: Colors.black,
        ),
      );
  factory IntensityColorScheme.eqmonitor() => IntensityColorScheme(
        zero: const TextColorModel(
          foreground: Colors.black,
          background: Colors.white,
        ),
        one: const TextColorModel(
          foreground: Colors.black,
          background: Colors.lightBlueAccent,
        ),
        two: TextColorModel(
          foreground: Colors.black,
          background: Colors.greenAccent.shade100,
        ),
        three: TextColorModel(
          foreground: Colors.black,
          background: Colors.greenAccent.shade700,
        ),
        four: TextColorModel(
          foreground: Colors.black,
          background: Colors.yellow.shade400,
        ),
        fiveLower: const TextColorModel(
          foreground: Colors.black,
          background: Colors.amber,
        ),
        fiveUpper: TextColorModel(
          foreground: Colors.black,
          background: Colors.orange.shade800,
        ),
        sixLower: const TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 255, 40, 0),
        ),
        sixUpper: const TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 165, 0, 33),
        ),
        seven: const TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 200, 0, 255),
        ),
        unknown: const TextColorModel(
          foreground: Colors.white,
          background: Colors.black,
        ),
      );

  factory IntensityColorScheme.earthQuickly() => const IntensityColorScheme(
        zero: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 48, 48, 48),
        ),
        one: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 32, 80, 112),
        ),
        two: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 48, 143, 191),
        ),
        three: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 132, 211, 132),
        ),
        four: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 255, 231, 48),
        ),
        fiveLower: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 255, 160, 48),
        ),
        fiveUpper: TextColorModel(
          foreground: Colors.black,
          background: Color.fromARGB(255, 239, 100, 0),
        ),
        sixLower: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 207, 16, 16),
        ),
        sixUpper: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 112, 16, 16),
        ),
        seven: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 171, 32, 178),
        ),
        unknown: TextColorModel(
          foreground: Colors.white,
          background: Color.fromARGB(255, 47, 79, 79),
        ),
      );
}

@freezed
class TextColorModel with _$TextColorModel {
  const factory TextColorModel({
    @JsonKey(fromJson: colorFromJson, toJson: colorToJson)
    required Color foreground,
    @JsonKey(fromJson: colorFromJson, toJson: colorToJson)
    required Color background,
  }) = _TextColorModel;

  factory TextColorModel.fromJson(Map<String, dynamic> json) =>
      _$TextColorModelFromJson(json);

  factory TextColorModel.fromBackground(Color background) => TextColorModel(
        foreground:
            background.computeLuminance() > 0.5 ? Colors.black : Colors.white,
        background: background,
      );
}

extension IntensityColorSchemeExt on IntensityColorScheme {
  TextColorModel fromJmaIntensity(JmaIntensity intensity) =>
      switch (intensity) {
        JmaIntensity.one => one,
        JmaIntensity.two => two,
        JmaIntensity.three => three,
        JmaIntensity.four => four,
        JmaIntensity.fiveUpperNoInput => fiveUpper,
        JmaIntensity.fiveLower => fiveLower,
        JmaIntensity.fiveUpper => fiveUpper,
        JmaIntensity.sixLower => sixLower,
        JmaIntensity.sixUpper => sixUpper,
        JmaIntensity.seven => seven,
        JmaIntensity.unknown => unknown,
        JmaIntensity.over => throw UnimplementedError('over is not supported'),
      };

  TextColorModel fromJmaLgIntensity(
    JmaLgIntensity intensity,
  ) =>
      switch (intensity) {
        JmaLgIntensity.zero => zero,
        JmaLgIntensity.one => three,
        JmaLgIntensity.two => four,
        JmaLgIntensity.three => fiveLower,
        JmaLgIntensity.four => seven,
        JmaLgIntensity.unknown => unknown,
        JmaLgIntensity.over =>
          throw UnimplementedError('over is not supported'),
      };
}

Color colorFromJson(String color) => Color(int.parse(color, radix: 16));
String colorToJson(Color color) {
  final sRgb = color.withValues(
    colorSpace: ColorSpace.sRGB,
  );
  final r = (sRgb.r * 255).toInt();
  final g = (sRgb.g * 255).toInt();
  final b = (sRgb.b * 255).toInt();
  final hex = r << 16 | g << 8 | b;
  return hex.toRadixString(16).padLeft(8, '0');
}
