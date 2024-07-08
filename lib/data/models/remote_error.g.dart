// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteError _$RemoteErrorFromJson(Map<String, dynamic> json) => RemoteError(
      code: (json['code'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$RemoteErrorToJson(RemoteError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
    };
