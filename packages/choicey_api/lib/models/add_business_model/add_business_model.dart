import 'package:json_annotation/json_annotation.dart';
part 'add_business_model.g.dart';

@JsonSerializable()
class AddBusiness {
  String id;
  String name;
  String description;
  String price;
  String active_period;
  AddBusiness({required this.id, required this.name, required this.active_period, required this.description, required this.price});
  factory AddBusiness.fromJson(Map<String, dynamic> json) =>
      _$AddBusinessFromJson(json);
  Map<String, dynamic> toJson() => _$AddBusinessToJson(this);
}