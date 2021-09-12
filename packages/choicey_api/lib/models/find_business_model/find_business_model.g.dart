// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_business_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindBusinessModel _$FindBusinessModelFromJson(Map<String, dynamic> json) =>
    FindBusinessModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Listings.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$FindBusinessModelToJson(FindBusinessModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.data,
    };
