import 'package:client/domain/entities/auth_entity/auth_entity.dart';

abstract interface class IAuthRepository {
  Future<void> signIn({required AuthModel authModel});
  Future<void> signUp({required AuthModel authModel});
  Future<void> signOut();
}
