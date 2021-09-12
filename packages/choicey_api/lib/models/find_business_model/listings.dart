import 'package:json_annotation/json_annotation.dart';
part 'listings.g.dart';

@JsonSerializable()
class Listings {
  String image;
  String title;
  List<String> tags;
  String service_area;
  String address;
  String phone;
  Listings(
      {required this.image,
      required this.title,
      required this.tags,
      required this.address,
      required this.phone,
      required this.service_area});
  factory Listings.fromJson(Map<String, dynamic> json) =>
      _$ListingsFromJson(json);
  Map<String, dynamic> toJson() => _$ListingsToJson(this);
}


