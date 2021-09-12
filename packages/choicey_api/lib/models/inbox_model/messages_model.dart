import 'package:json_annotation/json_annotation.dart';
part 'messages_model.g.dart';

@JsonSerializable()
class MessageModel{
  String title;
  String message;
  // ignore: non_constant_identifier_names
  String created_at;

  // ignore: non_constant_identifier_names
  MessageModel({required this.title, required this.message, required this.created_at});
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

}