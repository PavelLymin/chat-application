import 'package:client/domain/entities/user_entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@JsonSerializable()
class UserDto with _$UserDto {
  UserDto({this.id, required this.username, required this.email});
  @override
  final String? id;
  @override
  final String username;
  @override
  final String email;

  factory UserDto.fromDomain(UserEntity object) =>
      UserDto(id: object.id, username: object.username, email: object.email);

  UserEntity toDomain() => UserEntity(id: id, username: username, email: email);

  factory UserDto.fromJson(Map<String, Object?> json) =>
      _$UserDtoFromJson(json);

  Map<String, Object?> toJson() => _$UserDtoToJson(this);
}
