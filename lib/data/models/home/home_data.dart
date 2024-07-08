import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data.freezed.dart';
part 'home_data.g.dart';

@freezed
class HomeData with _$HomeData {
  factory HomeData({
    int? id,
    String? title,
    String? description,
    String? image,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, Object?> json) =>
      _$HomeDataFromJson(json);
}
