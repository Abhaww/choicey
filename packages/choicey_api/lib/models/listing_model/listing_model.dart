import 'package:json_annotation/json_annotation.dart';
part 'listing_model.g.dart';

@JsonSerializable()
class ListingModel {
  int count;
  String data;
  ListingModel({required this.data, required this.count});
  factory ListingModel.fromJson(Map<String, dynamic> json) =>
      _$ListingModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListingModelToJson(this);
}

