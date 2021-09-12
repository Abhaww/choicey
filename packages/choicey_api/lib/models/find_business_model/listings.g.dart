// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Listings _$ListingsFromJson(Map<String, dynamic> json) => Listings(
      image: json['image'] as String,
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String,
      phone: json['phone'] as String,
      service_area: json['service_area'] as String,
    );

Map<String, dynamic> _$ListingsToJson(Listings instance) => <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'tags': instance.tags,
      'service_area': instance.service_area,
      'address': instance.address,
      'phone': instance.phone,
    };
