// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagesModel _$MessagesModelFromJson(Map<String, dynamic> json) =>
    MessagesModel(
      title: json['title'] as String,
      name: json['name'] as String,
      message: json['message'] as String,
      created_at: json['created_at'] as String,
      listingid: json['listingid'] as int,
      sender: json['sender'] as int,
    );

Map<String, dynamic> _$MessagesModelToJson(MessagesModel instance) =>
    <String, dynamic>{
      'listingid': instance.listingid,
      'title': instance.title,
      'name': instance.name,
      'message': instance.message,
      'created_at': instance.created_at,
      'sender': instance.sender,
    };
