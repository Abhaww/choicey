// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagsListModel _$TagsListModelFromJson(Map<String, dynamic> json) =>
    TagsListModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TagsListModelToJson(TagsListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
