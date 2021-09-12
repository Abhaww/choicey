// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_business_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBusiness _$AddBusinessFromJson(Map<String, dynamic> json) => AddBusiness(
      id: json['id'] as String,
      name: json['name'] as String,
      active_period: json['active_period'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$AddBusinessToJson(AddBusiness instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'active_period': instance.active_period,
    };
