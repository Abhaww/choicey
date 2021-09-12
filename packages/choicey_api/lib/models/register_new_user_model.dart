import 'package:json_annotation/json_annotation.dart';

part 'register_new_user_model.g.dart';

@JsonSerializable()
class RegisterAndLoginUserModel {
  int userid;
  RegisterAndLoginUserModel({required this.userid});
  factory RegisterAndLoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterAndLoginUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterAndLoginUserModelToJson(this);
}
