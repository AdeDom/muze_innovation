// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseImpl _$$HomeResponseImplFromJson(Map<String, dynamic> json) =>
    _$HomeResponseImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : HomeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeResponseImplToJson(_$HomeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$HomeDataImpl _$$HomeDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$HomeDataImplToJson(_$HomeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
    };
