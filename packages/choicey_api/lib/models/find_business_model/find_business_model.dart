import 'package:json_annotation/json_annotation.dart';
import 'listings.dart';

part 'find_business_model.g.dart';

@JsonSerializable()
class FindBusinessModel {
  int count;
  List<Listings> data;

  FindBusinessModel({required this.data, required this.count});
  factory FindBusinessModel.fromJson(Map<String, dynamic> json) =>
      _$FindBusinessModelFromJson(json);
  Map<String, dynamic> toJson() => _$FindBusinessModelToJson(this);
}
