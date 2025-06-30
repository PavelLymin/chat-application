// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) => AuthDto(
  email: json['email'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$AuthDtoToJson(AuthDto instance) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
};
