// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      lastName: json['lastName'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      isMan: json['isMan'] as bool,
      nationality: json['nationality'] as String,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      planningLevel: json['planningLevel'] as String,
      isWorking: json['isWorking'] as bool,
      religion: json['religion'] as String,
      id: json['id'] as int,
      token: json['token'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'token': instance.token,
      'lastName': instance.lastName,
      'name': instance.name,
      'isMan': instance.isMan,
      'nationality': instance.nationality,
      'birthday': instance.birthday?.toIso8601String(),
      'planningLevel': instance.planningLevel,
      'isWorking': instance.isWorking,
      'religion': instance.religion
    };
