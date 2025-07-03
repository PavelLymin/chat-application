import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_entity.freezed.dart';

@freezed
class AuthEntity with _$AuthEntity {
  AuthEntity({this.uid, this.password, required this.email});
  @override
  final String? uid;
  @override
  final String email;
  @override
  final String? password;
}
