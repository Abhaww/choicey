// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InboxModel _$InboxModelFromJson(Map<String, dynamic> json) => InboxModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InboxModelToJson(InboxModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
