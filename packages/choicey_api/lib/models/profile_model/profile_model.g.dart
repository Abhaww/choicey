// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      billing_address: json['billing_address'] as String,
      billing_name: json['billing_name'] as String,
      displayname: json['displayname'] as String,
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      nickname: json['nickname'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'nickname': instance.nickname,
      'displayname': instance.displayname,
      'email': instance.email,
      'billing_name': instance.billing_name,
      'billing_address': instance.billing_address,
    };
