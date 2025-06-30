import 'package:client/domain/entities/auth_entity/auth_entity.dart';

abstract interface class IAuthRepository {
  Future<void> signIn({required AuthEntity authModel});
  Future<void> signUp({required AuthEntity authModel});
  Future<void> signOut();
}
