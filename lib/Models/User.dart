import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String email;
  final String nickname;
  final String token;
  final String lastName;
  final String name;
  final bool isMan;
  final String nationality;
  final DateTime birthday;
  final String planningLevel;
  final bool isWorking;
  final String religion;

  User({this.lastName, this.name, 
      this.email,
      this.nickname,
      this.isMan,
      this.nationality,
      this.birthday,
      this.planningLevel,
      this.isWorking,
      this.religion,
      this.id,
      this.token,});

  Map<String, dynamic> toJson() => _$UserToJson(this);
  factory User.fromJson(Map<String, dynamic> parsedJson) =>
      _$UserFromJson(parsedJson);
}
