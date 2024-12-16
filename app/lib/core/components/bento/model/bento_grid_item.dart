import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bento_grid_item.freezed.dart';

@freezed
class BentoGridItem with _$BentoGridItem {
  const factory BentoGridItem({
    required String id,
    required BentoGridSize size,
    required Widget child,
  }) = _BentoGridItem;
}
