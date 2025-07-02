import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
@JsonSerializable()
class AuthDto with _$AuthDto {
  AuthDto({this.uid, this.password, required this.email});
  @override
  final String? uid;
  @override
  final String email;
  @override
  final String? password;

  factory AuthDto.fromUserFBAuth(User object) =>
      AuthDto(uid: object.uid, email: object.email!);

  AuthEntity toDomain() =>
      AuthEntity(uid: uid, email: email, password: password);

  factory AuthDto.fromJson(Map<String, Object?> json) =>
      _$AuthDtoFromJson(json);

  Map<String, Object?> toJson() => _$AuthDtoToJson(this);
}
