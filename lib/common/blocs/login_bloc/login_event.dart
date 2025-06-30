part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signIn({required AuthEntity authModel}) = _SignIn;
  const factory LoginEvent.signUp({required AuthEntity authModel}) = _SignUp;
  const factory LoginEvent.signOut() = _SignOut;
}
