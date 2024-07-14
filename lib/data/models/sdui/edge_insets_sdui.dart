import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edge_insets_sdui.freezed.dart';
part 'edge_insets_sdui.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class EdgeInsetsSdui with _$EdgeInsetsSdui {
  @FreezedUnionValue('EdgeInsets.all')
  const factory EdgeInsetsSdui.edgeInsetsAll({
    @Default(0.0) double value,
  }) = _EdgeInsetsSduiAll;

  @FreezedUnionValue('EdgeInsets.only')
  const factory EdgeInsetsSdui.edgeInsetsOnly({
    @Default(0.0) double left,
    @Default(0.0) double top,
    @Default(0.0) double right,
    @Default(0.0) double bottom,
  }) = _EdgeInsetsSduiOnly;

  @FreezedUnionValue('EdgeInsets.symmetric')
  const factory EdgeInsetsSdui.edgeInsetsSymmetric({
    @Default(0.0) double vertical,
    @Default(0.0) double horizontal,
  }) = _EdgeInsetsSduiSymmetric;

  factory EdgeInsetsSdui.fromJson(Map<String, Object?> json) =>
      _$EdgeInsetsSduiFromJson(json);
}

extension EdgeInsetsSduiExtension on EdgeInsetsSdui? {
  EdgeInsetsGeometry fromPadding() {
    return this?.when(
          edgeInsetsAll: (value) {
            return EdgeInsets.all(value);
          },
          edgeInsetsOnly: (left, top, right, bottom) {
            return EdgeInsets.only(
              left: left,
              top: top,
              right: right,
              bottom: bottom,
            );
          },
          edgeInsetsSymmetric: (vertical, horizontal) {
            return EdgeInsets.symmetric(
              vertical: vertical,
              horizontal: horizontal,
            );
          },
        ) ??
        EdgeInsets.zero;
  }
}
