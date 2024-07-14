import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muze_innovation/data/models/sdui/alignment_directional_sdui.dart';
import 'package:muze_innovation/data/models/sdui/app_bar_sdui.dart';
import 'package:muze_innovation/data/models/sdui/colors_sdui.dart';
import 'package:muze_innovation/data/models/sdui/edge_insets_sdui.dart';

part 'sdui_data.freezed.dart';
part 'sdui_data.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
sealed class SduiData with _$SduiData {
  const factory SduiData.scaffold({
    required AppBarSdui appBar,
    required SduiData body,
  }) = _Scaffold;

  const factory SduiData.column({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(MainAxisSize.max) MainAxisSize mainAxisSize,
    @Default(CrossAxisAlignment.center) CrossAxisAlignment crossAxisAlignment,
    TextDirection? textDirection,
    @Default(VerticalDirection.down) VerticalDirection verticalDirection,
    TextBaseline? textBaseline,
    required List<SduiData> children,
  }) = _Column;

  const factory SduiData.row({
    @Default(MainAxisAlignment.start) MainAxisAlignment mainAxisAlignment,
    @Default(MainAxisSize.max) MainAxisSize mainAxisSize,
    @Default(CrossAxisAlignment.center) CrossAxisAlignment crossAxisAlignment,
    TextDirection? textDirection,
    @Default(VerticalDirection.down) VerticalDirection verticalDirection,
    TextBaseline? textBaseline,
    required List<SduiData> children,
  }) = _Row;

  const factory SduiData.stack({
    @Default(AlignmentDirectionalSdui.topStart)
        AlignmentDirectionalSdui alignment,
    TextDirection? textDirection,
    @Default(StackFit.loose) StackFit fit,
    @Default(Clip.hardEdge) Clip clipBehavior,
    required List<SduiData> children,
  }) = _Stack;

  const factory SduiData.center({
    double? widthFactor,
    double? heightFactor,
    required SduiData child,
  }) = _Center;

  const factory SduiData.container({
    EdgeInsetsSdui? padding,
    ColorsSdui? color,
    double? width,
    double? height,
    required SduiData child,
    @Default(Clip.none) Clip clipBehavior,
  }) = _Container;

  const factory SduiData.padding({
    required EdgeInsetsSdui padding,
    required SduiData child,
  }) = _Padding;

  const factory SduiData.sizedBox({
    double? width,
    double? height,
    SduiData? child,
  }) = _SizedBox;

  const factory SduiData.elevatedButton({
    required SduiData child,
  }) = _ElevatedButton;

  const factory SduiData.text({
    required String data,
  }) = _Text;

  @FreezedUnionValue('Image.asset')
  const factory SduiData.imageAsset({
    required String name,
  }) = _ImageAsset;

  @FreezedUnionValue('Image.network')
  const factory SduiData.imageNetwork({
    required String src,
  }) = _ImageNetwork;

  const factory SduiData.clipOval({
    @Default(Clip.antiAlias) Clip clipBehavior,
    required SduiData child,
  }) = _ClipOval;

  const factory SduiData.unknown() = _Unknown;

  factory SduiData.fromJson(Map<String, dynamic> json) =>
      _$SduiDataFromJson(json);
}
