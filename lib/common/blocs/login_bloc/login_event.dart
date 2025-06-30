part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signIn({required AuthModel authModel}) = _SignIn;
  const factory LoginEvent.signUp({required AuthModel authModel}) = _SignUp;
  const factory LoginEvent.signOut() = _SignOut;
}
