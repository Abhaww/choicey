import 'package:json_annotation/json_annotation.dart';
part 'messages_model.g.dart';

@JsonSerializable()
class MessagesModel {
  int listingid;
  String title;
  String name;
  String message;
  String created_at;
  int sender;

  MessagesModel(
      {required this.title,
      required this.name,
      required this.message,
      required this.created_at,
      required this.listingid,
      required this.sender});
  factory MessagesModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesModelFromJson(json);
  Map<String, dynamic> toJson() => _$MessagesModelToJson(this);
}
