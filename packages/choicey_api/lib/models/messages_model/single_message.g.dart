// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleMessage _$SingleMessageFromJson(Map<String, dynamic> json) =>
    SingleMessage(
      sender: json['sender'] as String,
      message: json['message'] as String,
      type: json['class'] as String,
      date: json['date'] as String,
      receiver: json['receiver'] as String,
    );

Map<String, dynamic> _$SingleMessageToJson(SingleMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'class': instance.type,
      'date': instance.date,
      'sender': instance.sender,
      'receiver': instance.receiver,
    };
