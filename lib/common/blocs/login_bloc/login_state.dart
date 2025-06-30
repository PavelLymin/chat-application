part of 'login_bloc.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.failure({required String message}) = Failure;
  const factory LoginState.success() = Success;
}
