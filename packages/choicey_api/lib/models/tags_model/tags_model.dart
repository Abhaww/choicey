import 'package:json_annotation/json_annotation.dart';
part 'tags_model.g.dart';

@JsonSerializable()
class Tags {
  int term_id;
  String name;
  String slug;
  String term_group;
  String term_taxonomy_id;
  String taxonomy;
  String description;
  String parent;
  int count;
  String filter;
  Tags({
   required this.count,
   required this.name,
   required this.filter,
    required this.description,
    required this.parent,
    required this.slug,
    required this.taxonomy,
    required this.term_group,
    required this.term_id,
    required this.term_taxonomy_id,
});

  factory Tags.fromJson(Map<String, dynamic> json) =>
      _$TagsFromJson(json);
  Map<String, dynamic> toJson() => _$TagsToJson(this);
}