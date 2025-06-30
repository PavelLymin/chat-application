import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_entity.freezed.dart';

@freezed
class AuthEntity with _$AuthEntity {
  AuthEntity({required this.email, required this.password});
  @override
  final String email;
  @override
  final String password;
}
