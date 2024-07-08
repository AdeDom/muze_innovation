import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  factory HomeResponse({
    String? status,
    String? message,
    List<HomeData?>? data,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, Object?> json) =>
      _$HomeResponseFromJson(json);
}

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
