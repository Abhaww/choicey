import 'package:choicey_api/models/inbox_model/messages_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'inbox_model.g.dart';

@JsonSerializable()
class InboxModel {
  List<MessageModel> data;
  InboxModel({required this.data});
  factory InboxModel.fromJson(Map<String, dynamic> json) =>
      _$InboxModelFromJson(json);
  Map<String, dynamic> toJson() => _$InboxModelToJson(this);
}