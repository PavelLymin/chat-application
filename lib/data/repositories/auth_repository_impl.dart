import 'package:client/core/exceptions.dart';
import 'package:client/data/dtos/auth_dto/auth_dto.dart';
import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth firebaseAuth;
  AuthRepositoryImpl({required this.firebaseAuth});

  @override
  Future<void> signIn({required AuthEntity authEntity}) async {

    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: authEntity.email,
        password: authEntity.password!,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('Пользователь не найден');
      } else if (e.code == 'wrong-password') {
        throw AuthException('Неверный пароль');
      } else if (e.code == 'invalid-credential') {
        throw AuthException('Неверный E-mail или пароль');
      }
      throw AuthException();
    } catch (_) {
      throw AuthException();
    }
  }

  @override
  Future<AuthEntity> signUp({required AuthEntity authEntity}) async {

    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
        email: authEntity.email,
        password: authEntity.password!,
      );

      if (result.user != null) {
        final authEntity = AuthDto.fromUserFBAuth(result.user!).toDomain();
        return authEntity;
      }

      throw AuthException('Пользователь не найден');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('Указанный пароль слишком слабый');
      } else if (e.code == 'email-already-in-use') {
        throw AuthException(
          'Учетная запись с таким адресом электронной почты уже существует',
        );
      }
      throw AuthException();
    } catch (_) {
      throw AuthException();
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (_) {
      throw AuthException();
    }
  }
}
