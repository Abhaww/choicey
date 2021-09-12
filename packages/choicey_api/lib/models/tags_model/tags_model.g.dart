// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      count: json['count'] as int,
      name: json['name'] as String,
      filter: json['filter'] as String,
      description: json['description'] as String,
      parent: json['parent'] as String,
      slug: json['slug'] as String,
      taxonomy: json['taxonomy'] as String,
      term_group: json['term_group'] as String,
      term_id: json['term_id'] as int,
      term_taxonomy_id: json['term_taxonomy_id'] as String,
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'term_id': instance.term_id,
      'name': instance.name,
      'slug': instance.slug,
      'term_group': instance.term_group,
      'term_taxonomy_id': instance.term_taxonomy_id,
      'taxonomy': instance.taxonomy,
      'description': instance.description,
      'parent': instance.parent,
      'count': instance.count,
      'filter': instance.filter,
    };
