import 'package:client/core/exceptions.dart';
import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth firebaseAuth;
  AuthRepositoryImpl({required this.firebaseAuth});

  @override
  Future<void> signIn({required AuthEntity authModel}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: authModel.email,
        password: authModel.password,
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
  Future<void> signUp({required AuthEntity authModel}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: authModel.email,
        password: authModel.password,
      );
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
