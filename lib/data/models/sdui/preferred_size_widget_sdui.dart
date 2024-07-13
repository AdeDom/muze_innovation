import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muze_innovation/data/models/sdui/color_sdui.dart';
import 'package:muze_innovation/data/models/sdui/sdui_data.dart';

part 'preferred_size_widget_sdui.freezed.dart';

part 'preferred_size_widget_sdui.g.dart';

@freezed
class PreferredSizeWidgetSdui with _$PreferredSizeWidgetSdui {
  factory PreferredSizeWidgetSdui({
    ColorSdui? backgroundColor,
    required SduiData title,
  }) = _PreferredSizeWidgetSdui;

  factory PreferredSizeWidgetSdui.fromJson(Map<String, Object?> json) =>
      _$PreferredSizeWidgetSduiFromJson(json);
}
