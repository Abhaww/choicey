import 'package:json_annotation/json_annotation.dart';
part 'single_message.g.dart';

@JsonSerializable()
class SingleMessage{
  String message;
  @JsonKey(name: 'class')
  String type;
  String date;
  String sender;
  String receiver;

  SingleMessage({required this.sender, required this.message, required this.type, required this.date, required this.receiver});
  factory SingleMessage.fromJson(Map<String, dynamic> json) =>
      _$SingleMessageFromJson(json);
  Map<String, dynamic> toJson() => _$SingleMessageToJson(this);
}