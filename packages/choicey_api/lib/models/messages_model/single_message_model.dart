import 'package:choicey_api/models/messages_model/single_message.dart';
import 'package:json_annotation/json_annotation.dart';
part 'single_message_model.g.dart';

@JsonSerializable()
class SingleMessageList {
  List<SingleMessage> data;
  SingleMessageList({required this.data});
  factory SingleMessageList.fromJson(Map<String, dynamic> json) =>
      _$SingleMessageListFromJson(json);
  Map<String, dynamic> toJson() => _$SingleMessageListToJson(this);
}