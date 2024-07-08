// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: BaseResponse._dataFromJson(json['data'] as Object),
      error: json['error'] == null
          ? null
          : RemoteError.fromJson(json['error'] as Map<String, dynamic>),
    );
