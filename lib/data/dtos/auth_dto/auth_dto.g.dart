// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) => AuthDto(
  uid: json['uid'] as String?,
  password: json['password'] as String?,
  email: json['email'] as String,
);

Map<String, dynamic> _$AuthDtoToJson(AuthDto instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'password': instance.password,
};
