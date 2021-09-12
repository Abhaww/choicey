import 'package:json_annotation/json_annotation.dart';
import 'tags_model.dart';
part 'tags_list.g.dart';

@JsonSerializable()
class TagsListModel{
  List<Tags> data;
  TagsListModel({required this.data});
  factory TagsListModel.fromJson(Map<String, dynamic> json) =>
      _$TagsListModelFromJson(json);
  Map<String, dynamic> toJson() => _$TagsListModelToJson(this);
}