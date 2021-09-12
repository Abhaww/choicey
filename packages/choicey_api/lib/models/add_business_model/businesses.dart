import 'package:json_annotation/json_annotation.dart';
import 'add_business_model.dart';
part 'businesses.g.dart';

@JsonSerializable()
class Businesses {
  List<AddBusiness> data;
  Businesses({required this.data});
  factory Businesses.fromJson(Map<String, dynamic> json) =>
      _$BusinessesFromJson(json);
  Map<String, dynamic> toJson() => _$BusinessesToJson(this);
}