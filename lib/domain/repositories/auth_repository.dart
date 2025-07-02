import 'package:client/domain/entities/auth_entity/auth_entity.dart';

abstract interface class IAuthRepository {
<<<<<<< Updated upstream
  Future<void> signIn({required AuthModel authModel});
  Future<void> signUp({required AuthModel authModel});
=======
  Future<void> signIn({required AuthEntity authEntity});
  Future<AuthEntity> signUp({required AuthEntity authEntity});
>>>>>>> Stashed changes
  Future<void> signOut();
}
