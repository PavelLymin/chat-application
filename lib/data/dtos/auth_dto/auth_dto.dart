import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
@JsonSerializable()
class AuthDto with _$AuthDto {
  AuthDto({required this.email, required this.password});
  @override
  final String email;
  @override
  final String password;

  factory AuthDto.fromJson(Map<String, Object?> json) =>
      _$AuthDtoFromJson(json);

  Map<String, Object?> toJson() => _$AuthDtoToJson(this);
}
