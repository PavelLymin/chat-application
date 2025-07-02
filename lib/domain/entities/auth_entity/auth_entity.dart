import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_entity.freezed.dart';

@freezed
<<<<<<< Updated upstream
class AuthModel with _$AuthModel {
  AuthModel({required this.email, required this.password});
=======
class AuthEntity with _$AuthEntity {
  AuthEntity({this.uid, this.password, required this.email});
  @override
  final String? uid;
>>>>>>> Stashed changes
  @override
  final String email;
  @override
  final String? password;
}
