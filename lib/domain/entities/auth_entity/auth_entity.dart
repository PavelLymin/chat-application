import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_entity.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  AuthModel({required this.email, required this.password});
  @override
  final String email;
  @override
  final String password;
}
