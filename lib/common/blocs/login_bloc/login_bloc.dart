import 'package:client/core/auth_exception.dart';
import 'package:client/domain/entities/auth_entity/auth_entity.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _repository;
  LoginBloc({required IAuthRepository repository})
    : _repository = repository,
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
      await _repository.signIn(authModel: event.authModel);
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
      await _repository.signUp(authModel: event.authModel);
      emit(LoginState.success());
    } on AuthException catch (e) {
      emit(LoginState.failure(message: e.message));
    } catch (e) {
      emit(LoginState.failure(message: e.toString()));
    }
  }

  Future<void> _signOut(Emitter<LoginState> emit) async {
    emit(LoginState.loading());
    try {
      await _repository.signOut();
      emit(LoginState.success());
    } on AuthException catch (e) {
      emit(LoginState.failure(message: e.message));
    } catch (e) {
      emit(LoginState.failure(message: e.toString()));
    }
  }
}
