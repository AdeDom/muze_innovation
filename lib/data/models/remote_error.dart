import 'package:json_annotation/json_annotation.dart';

part 'remote_error.g.dart';

@JsonSerializable()
class RemoteError {
  RemoteError({
    this.code,
    this.title,
  });

  int? code;
  String? title;

  factory RemoteError.fromJson(Map<String, dynamic> json) =>
      _$RemoteErrorFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteErrorToJson(this);
}
