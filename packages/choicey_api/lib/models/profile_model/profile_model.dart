import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class Profile{
  String username;
  String firstname;
  String lastname;
  String nickname;
  String displayname;
  String email;
  String billing_name;
  String billing_address;

  Profile({required this.billing_address, required this.billing_name, required this.displayname, required this.email, required this.firstname, required this.lastname, required this.nickname, required this.username});
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
  }