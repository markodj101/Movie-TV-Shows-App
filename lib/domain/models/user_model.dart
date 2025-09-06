import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;

  UserModel({
    required this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}