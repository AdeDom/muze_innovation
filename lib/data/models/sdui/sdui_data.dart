import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muze_innovation/data/models/sdui/preferred_size_widget_sdui.dart';

part 'sdui_data.freezed.dart';

part 'sdui_data.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
sealed class SduiData with _$SduiData {
  const factory SduiData.scaffold({
    required PreferredSizeWidgetSdui appBar,
    required SduiData body,
  }) = _Scaffold;

  const factory SduiData.column({
    required List<SduiData> children,
  }) = _Column;

  const factory SduiData.text({
    required String data,
  }) = _Text;

  @FreezedUnionValue('Image.asset')
  const factory SduiData.imageAsset({
    required String name,
  }) = _ImageAsset;

  const factory SduiData.unknown() = _Unknown;

  factory SduiData.fromJson(Map<String, dynamic> json) =>
      _$SduiDataFromJson(json);
}
