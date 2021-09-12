// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleMessageList _$SingleMessageListFromJson(Map<String, dynamic> json) =>
    SingleMessageList(
      data: (json['data'] as List<dynamic>)
          .map((e) => SingleMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SingleMessageListToJson(SingleMessageList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
