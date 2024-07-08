import 'package:json_annotation/json_annotation.dart';
import 'package:muze_innovation/data/models/home/home_data.dart';
import 'package:muze_innovation/data/models/remote_error.dart';

part 'base_response.g.dart';

@JsonSerializable(createToJson: false)
class BaseResponse<T> {
  final String? status;
  final String? message;

  @JsonKey(fromJson: _dataFromJson)
  final T? data;

  final RemoteError? error;

  const BaseResponse({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  static T _dataFromJson<T>(Object json) {
    if (json is List) {
      return json
          .where((element) => element != null)
          .map((e) => HomeData.fromJson(e))
          .toList() as T;
    }

    throw ArgumentError.value(
      json,
      'json',
      'Cannot convert the provided data.',
    );
  }
}

/// Simple
/// BaseResponse.fromJson(
///   Map<String, dynamic> json,
///   T Function(dynamic json) fromJsonT,
/// ) {
///   status = json['status'];
///   message = json['message'];
///   data = json['data'] != null ? fromJsonT(json['data']) : null;
///   error = json['error'] != null ? RemoteError.fromJson(json['error']) : null;
/// }
///
/// BaseResponse.fromJson(
///   response.data,
///   (json) => (json as List<dynamic>?)
///       ?.map((e) => e != null ? HomeData.fromJson(e) : null)
///       .toList(),
/// );
