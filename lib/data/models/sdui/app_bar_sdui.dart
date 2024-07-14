import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muze_innovation/data/models/sdui/colors_sdui.dart';
import 'package:muze_innovation/data/models/sdui/sdui_data.dart';

part 'app_bar_sdui.freezed.dart';
part 'app_bar_sdui.g.dart';

@freezed
class AppBarSdui with _$AppBarSdui {
  factory AppBarSdui({
    ColorsSdui? backgroundColor,
    required SduiData title,
  }) = _AppBarSdui;

  factory AppBarSdui.fromJson(Map<String, Object?> json) =>
      _$AppBarSduiFromJson(json);
}
