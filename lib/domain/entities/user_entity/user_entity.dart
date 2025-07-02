import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  UserEntity({this.id, required this.username, required this.email});
  @override
  final String? id;
  @override
  final String username;
  @override
  final String email;
}
