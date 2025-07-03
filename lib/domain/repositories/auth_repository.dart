import 'package:client/domain/entities/auth_entity/auth_entity.dart';

abstract interface class IAuthRepository {
  Future<void> signIn({required AuthEntity authEntity});
  Future<AuthEntity> signUp({required AuthEntity authEntity});
  Future<void> signOut();
}
