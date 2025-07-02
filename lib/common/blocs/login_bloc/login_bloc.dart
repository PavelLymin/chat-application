import 'package:client/core/exceptions.dart';
import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:client/domain/entities/user_entity/user_entity.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;
  final IUserRepository _userRepository;
  LoginBloc({
    required IAuthRepository authRepository,
    required IUserRepository userRepository,
  }) : _authRepository = authRepository,
       _userRepository = userRepository,
       super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      switch (event) {
        case _SignIn():
          await _signIn(event, emit);
        case _SignUp():
          await _signUp(event, emit);
        case _SignOut():
          await _signOut(emit);
      }
    });
  }

  Future<void> _signIn(_SignIn event, Emitter<LoginState> emit) async {
    emit(LoginState.loading());
    try {
      await _authRepository.signIn(authEntity: event.authModel);
      emit(LoginState.success());
    } on AuthException catch (e) {
      emit(LoginState.failure(message: e.message));
    } catch (e) {
      emit(LoginState.failure(message: e.toString()));
    }
  }

  Future<void> _signUp(_SignUp event, Emitter<LoginState> emit) async {
    emit(LoginState.loading());
    try {
      final result = await _authRepository.signUp(authEntity: event.authModel);
      final userEntity = UserEntity(
        id: result.uid,
        username: event.userName,
        email: result.email,
      );
      print(userEntity);
      await _userRepository.addUser(userEntity: userEntity);
      emit(LoginState.success());
    } on AuthException catch (e) {
      emit(LoginState.failure(message: e.message));
    } on ApiException catch (e) {
      emit(LoginState.failure(message: e.message));
    } catch (e) {
      emit(LoginState.failure(message: e.toString()));
    }
  }

  Future<void> _signOut(Emitter<LoginState> emit) async {
    emit(LoginState.loading());
    try {
      await _authRepository.signOut();
      emit(LoginState.success());
    } on AuthException catch (e) {
      emit(LoginState.failure(message: e.message));
    } catch (e) {
      emit(LoginState.failure(message: e.toString()));
    }
  }
}
